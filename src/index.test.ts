import { helloWorld } from "./index";

it("should say hello world!", () => {
  const expected = "hello world!";
  const actual = helloWorld({});
  expect(actual).toBe(expected);
});

it("should say HELLO WORLD! when uppercase specified", () => {
  const expected = "HELLO WORLD!";
  const actual = helloWorld({ isUppercase: true });
  expect(actual).toBe(expected);
});
