# love2d-socket-test

telnet echo server on Love2D / LoVR

## Usage

```bash
$ love --console .

# or

$ lovr --console .

# NOTE: this lovr should have been built with lovr-luasocket plugin.
#       see Dependencies fore more.
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

## Dependencies

### LoVR Plugins

***NOTE***: Check [Plugins](https://lovr.org/docs/Plugins) how to use them.

- [lovr-luasocket](https://github.com/brainrom/lovr-luasocket)

Prebuilt LoVR executables (including lovr-luasocket) can be get from [Releases](https://github.com/funatsufumiya/love2d-socket-test/releases) page.

#### How to build (LoVR)

```bash
$ git clone --recursive https://github.com/bjornbytes/lovr -b v0.18.0
$ cd lovr
$ git submodule add https://github.com/brainrom/lovr-luasocket plugins/lovr-luasocket
$ cd plugins/lovr-luasocket
$ git submodule update --init --recursive
$ cd ../..
$ cmake -B build -DCMAKE_POLICY_VERSION_MINIMUM=3.5 -DLOVR_BUILD_BUNDLE=ON
$ cmake --build build --parallel 8 -j 8 --config Release
```