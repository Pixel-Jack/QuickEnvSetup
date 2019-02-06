# MailServer

## Common
[Documentation](https://github.com/tomav/docker-mailserver)
You have to replace $0 by the path to the setup.sh of this current directory.
ex: ```bash
./mailserver/setup.sh email add <email> [<password>]```

```
 email:

    $0 email add <email> [<password>]
    $0 email update <email> [<password>]
    $0 email del <email>
    $0 email restrict <add|del|list> <send|receive> [<email>]
    $0 email list

  alias:
    $0 alias add <email> <recipient>
    $0 alias del <email> <recipient>
    $0 alias list

  config:

    $0 config dkim <keysize> (default: 2048)
    $0 config ssl

  relay:

    $0 relay add-domain <domain> <host> [<port>]
    $0 relay add-auth <domain> <username> [<password>]
    $0 relay exclude-domain <domain>

  debug:

    $0 debug fetchmail
    $0 debug fail2ban [<unban> <ip-address>]
    $0 debug show-mail-logs
    $0 debug inspect
    $0 debug login <commands>
```
