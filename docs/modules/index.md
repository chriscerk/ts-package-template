[@org-or-user/ts-package-template](../README.md) / [Exports](../modules.md) / index

# Module: index

## Table of contents

### Type aliases

- [HelloWorldRequest](index.md#helloworldrequest)

### Functions

- [helloWorld](index.md#helloworld)

## Type aliases

### HelloWorldRequest

Ƭ **HelloWorldRequest**: `Object`

#### Type declaration

| Name | Type | Description |
| :------ | :------ | :------ |
| `isUppercase?` | `boolean` | Whether or not the message should be uppercase |

#### Defined in

[index.ts:1](https://github.com/chriscerk/ts-package-template/blob/74e60d6/src/index.ts#L1)

## Functions

### helloWorld

▸ `Const` **helloWorld**(`req`): `string`

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `req` | [`HelloWorldRequest`](index.md#helloworldrequest) | Configuration for announcing hello to the world |

#### Returns

`string`

a hello message

#### Defined in

[index.ts:13](https://github.com/chriscerk/ts-package-template/blob/74e60d6/src/index.ts#L13)
