<?php
$q = "select users, name_user, passwd, type_user from users_game where users ='" . $_SESSION['user'] . "'";
$search = $data->query($q);
$rec = $search->fetch_object();
?>
<h1>Modify Details</h1>
<form action="edit-user.php" method="post">
    <table>
        <tr>
            <td>User
            <td><input type="text" name="user" id="user" size="10" maxlength="10" value="<?php echo $rec->users ?>" readonly>
        <tr>
            <td>Name
            <td><input type="text" name="name" id="name" size="30" maxlength="30" value="<?php echo $rec->name_user ?>">
        <tr>
            <td>Type
            <td><input type="text" name="type" id="type" readonly value="<?php echo $rec->type_user ?>">
        <tr>
            <td>Password
            <td><input type="password" name="password1" id="password1" size="10" maxlength="10">
        <tr>
            <td>Re-type password
            <td><input type="password" name="password2" id="password2" size="10" maxlength="10"><br>
        <tr>
            <td><input type="submit" value="Save">
    </table>
</form>