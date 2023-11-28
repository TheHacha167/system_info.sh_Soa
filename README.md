
# System Information Shell Script

This shell script provides a simple menu to access various system information. The script includes the following options:

1. **Disk Space**: This function (`disk_space`) shows the free disk space in human-readable format.
2. **Directory Size**: This function (`dir_size`) prompts the user to enter a directory path and then displays the size of the specified directory.
3. **CPU Usage**: This function (`cpu_usage`) displays the current CPU load.
4. **Users Connected**: This function (`users_connected`) displays the number of users currently connected to the system.
5. **Users Connected Since Last**: This function (`users_connected_since_last`) displays the number of users connected since the last time this function was called.

The script runs in a loop, displaying a menu for the user to select an option. The `last_users` variable is initialized before the loop starts, storing the number of users connected at that time.

To run the script, you can use the following command in a terminal:

```shell
chmod +x system_info.sh

```shell
bash system_info.sh