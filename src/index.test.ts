import { helloWorld } from "./index";

it("should say hello world", () => {
  const expected = "hello world!";
  const actual = helloWorld();
  expect(actual).toBe(expected);
});
