module.exports = {
    root: true,
    parser: '@typescript-eslint/parser',
    plugins: [
      '@typescript-eslint',
      "eslint-plugin-tsdoc"
    ],
    extends: [
      'eslint:recommended',
      'plugin:@typescript-eslint/recommended',
      'prettier'
    ],
    parserOptions: {
      project: "./tsconfig.json",
      tsconfigRootDir: __dirname,
      ecmaVersion: 2018,
      sourceType: "module",
      extraFileExtensions: ["cjs"]
    },
    rules: {
        "tsdoc/syntax": "warn"
      }
  };