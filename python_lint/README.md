# Python Lint

* [mypy][1]: `mypy clp_ffi_py`
  * mypy checks for typing errors. You should resolve all typing errors or if an
    error cannot be resolved (e.g., it's due to a third-party library), you
    should add a comment `# type: ignore` to [silence][2] the error.
* [docformatter][3]: `docformatter -i clp_ffi_py tests`
  * This formats docstrings.
* [Black][4]: `black clp_ffi_py`
  * This formats the Python code according to Black's code-style rules.
* [ruff][5]: `ruff check --fix clp_ffi_py tests`
  * This performs linting according to PEPs.

Note that `docformatter` should be run before `black` to give Black the [last][6].

[1]: https://mypy.readthedocs.io/en/stable/index.html
[2]: https://mypy.readthedocs.io/en/stable/common_issues.html#spurious-errors-and-locally-silencing-the-checker
[3]: https://docformatter.readthedocs.io/en/latest/
[4]: https://black.readthedocs.io/en/stable/index.html
[5]: https://beta.ruff.rs/docs/
[6]: https://docformatter.readthedocs.io/en/latest/faq.html#interaction-with-black