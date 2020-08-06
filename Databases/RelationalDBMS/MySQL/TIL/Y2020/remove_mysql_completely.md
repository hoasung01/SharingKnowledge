# Remove MySQL completely

1. Open the Terminal
2. Use `mysqldump` to backup your databases
3. Check for MySQL processes with: `ps -ax | grep mysql`
4. Stop and kill any MySQL processes
5. Analyze MySQL on HomeBrew:

    ```
    brew remove mysql
    brew cleanup
    ```

6. Remove files:

    ```
    sudo rm /usr/local/mysql
    sudo rm -rf /usr/local/var/mysql
    sudo rm -rf /usr/local/mysql*
    sudo rm ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
    sudo rm -rf /Library/StartupItems/MySQLCOM
    sudo rm -rf /Library/PreferencePanes/My*
    ```

7. Unload previous MySQL Auto-Login:

    ```
    launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
    ```

8. Remove previous MySQL Configuration:

    ```
    subl /etc/hostconfig`
    # Remove the line MYSQLCOM=-YES-
    ```

9. Remove previous MySQL Preferences:

    ```
    rm -rf ~/Library/PreferencePanes/My*
    sudo rm -rf /Library/Receipts/mysql*
    sudo rm -rf /Library/Receipts/MySQL*
    sudo rm -rf /private/var/db/receipts/*mysql*
    ```

10. Restart your computer just to ensure any MySQL processes are killed
11. Try to run mysql, **it shouldn't work**