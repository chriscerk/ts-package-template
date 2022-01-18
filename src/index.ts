export type HelloWorldRequest = {
  /**
   * Whether or not the message should be uppercase
   */
  isUppercase?: boolean;
};

/**
 *
 * @param req - Configuration for announcing hello to the world
 * @returns a hello message
 */
export const helloWorld = (req: HelloWorldRequest): string => {
  const message = "hello world!";
  const res = req.isUppercase ? message.toUpperCase() : message;
  return res;
};
