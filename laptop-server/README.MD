Here is a short explanation on the sed cmd and how it is being used here to update config files. Just make sure to define and update the variable being used 'NEW_BEHAVIOR'

- `sudo`: This command runs the following command with superuser privileges, allowing it to make changes to system files like `/etc/systemd/logind.conf`.

- `sed`: This is the stream editor command.

- `-i`: This option tells `sed` to edit files in place. Without this option, `sed` would output the modified text to standard output, but with `-i`, it directly edits the file specified.

- `"s/^#HandleLidSwitchExternalPower=.*/HandleLidSwitchExternalPower=${NEW_BEHAVIOR}/"`: This part specifies the substitution to be made. Let's break it down further:
  - `s/`: This indicates that we're performing a substitution.
  - `^#HandleLidSwitchExternalPower=`: This is the pattern we're searching for. It looks for lines in the file that start with `#HandleLidSwitchExternalPower=`. The `^` symbol indicates the beginning of the line, and `#` is the literal character "#" in this context.
  - `.*`: This matches any character (`.`) zero or more times (`*`). So, `.*` matches everything after `#HandleLidSwitchExternalPower=` on the line.
  - `/`: This separates the pattern from the replacement.
  - `HandleLidSwitchExternalPower=${NEW_BEHAVIOR}`: This is the replacement string. It replaces the entire matched line with `HandleLidSwitchExternalPower=` followed by the value of the `NEW_BEHAVIOR` variable.
  
- `/etc/systemd/logind.conf`: This is the file that `sed` will operate on. It specifies the path to the `logind.conf` file located in the `/etc/systemd/` directory.

So, putting it all together, the `sed` command substitutes the line in `/etc/systemd/logind.conf` that starts with `#HandleLidSwitchExternalPower=` with `HandleLidSwitchExternalPower=ignore`, effectively uncommenting and setting the behavior of lid switch events when on external power to the value stored in the `NEW_BEHAVIOR` variable.