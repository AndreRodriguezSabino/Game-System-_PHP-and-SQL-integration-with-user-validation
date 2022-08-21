<h1>New User</h1>
<form action="new-user.php" method="post">
    <table>
        <tr>
            <td>User
            <td><input type="text" name="user" id="user" size="10" maxlength="10">
        <tr>
            <td>Name
            <td><input type="text" name="name" id="name" size="30" maxlength="30">
        <tr>
            <td>Type
            <td><select name="type" id="type">
                    <option value="admin">System Administrator</option>
                    <option value="editor" selected>Authorised Editor</option>
                </select>
        <tr>
            <td>Password
            <td><input type="password" name="password1" id="password1" size="10" maxlength="10">
        <tr>
            <td>Re-type password
            <td><input type="password" name="password2" id="password2" size="10" maxlength="10">
        <tr>
            <td><input type="submit" value="Add User">
    </table>
</form>