use std::borrow::Borrow;
use nlu_utils::string as string_utils;

use cpython::{Python, PyUnicode, PyResult};

pub fn normalize(py: Python, string: PyUnicode) -> PyResult<PyUnicode> {
    let normalized_string = string_utils::normalize(string.to_string(py)?.borrow());
    return Ok(PyUnicode::new(py, &normalized_string.to_string()));
}

pub fn remove_diacritics(py: Python, string: PyUnicode) -> PyResult<PyUnicode> {
    let string_without_diacritics = string_utils::remove_diacritics(string.to_string(py)?.borrow());
    return Ok(PyUnicode::new(py, &string_without_diacritics.to_string()));
}
