wintersmith-tipue
=================

[Wintersmith](https://github.com/jnordberg/wintersmith) plugin for generating a [tipue](http://www.tipue.com) site index.

## Installing

Install globally or locally using npm

```bash
npm install [-g] wintersmith-tipue
```

and add `wintersmith-tipue` to your config.json

```json
{
  "plugins": [
    "wintersmith-tipue"
  ]
}
```

## Configuring

Use "tipue" to configure the output file location in config.json:

```json
{
  "tipue": {
    "filename": "data/tipue.json"
  }
}
```

## Running tests

```bash
npm install
npm test
```
