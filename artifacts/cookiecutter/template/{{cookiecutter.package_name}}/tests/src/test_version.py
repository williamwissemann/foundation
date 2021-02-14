import {{cookiecutter.package_name}}


def test___init__():
    """ check {{cookiecutter.package_name}} exposes a version attribute """
    assert hasattr({{cookiecutter.package_name}}, "__version__")
    assert isinstance({{cookiecutter.package_name}}.__version__, str)
