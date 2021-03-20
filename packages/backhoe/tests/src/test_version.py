import backhoe


def test___init__():
    """ check backhoe exposes a version attribute """
    assert hasattr(backhoe, "__version__")
    assert isinstance(backhoe.__version__, str)
