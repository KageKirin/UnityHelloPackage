# Hello (Unity)

A simple package.

## Installation

Add the following registry to Unity's scoped registries,
and this package to the dependencies.

```json
{
  "scopedRegistries": [
    {
      "name": "npmjs",
      "url": "https://registry.npmjs.org",
      "scopes": [
        "com.kagekirin"
      ]
    }
  ],
  "dependencies": {
    "com.kagekirin.hello": "0.0.1"
  }
}
```
