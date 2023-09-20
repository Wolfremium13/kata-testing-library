from testing import assert_true

fn raise_an_error() raises:
    raise Error("I'm an err2or!")


fn test_raise_an_error():
    try:
        raise_an_error()
    except e:
        _ = assert_true(e.value == "I'm an error!")
    else:
        _ = assert_true(False)

fn main():
   test_raise_an_error()