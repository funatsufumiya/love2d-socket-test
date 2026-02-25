# love2d-socket-test

telnet echo server

## Usage

```bash
$ love --console .
```

```bash
$ telnet 127.0.0.1 59978

Trying 127.0.0.1...
Connected to localhost.
Escape character is '^]'.
> test
test
> hoge
hoge
> fuga
fuga
Echo end. closed.
```