"""A description of the package."""
import importlib.metadata
import logging

__version__ = importlib.metadata.version("backhoe")

format_template = "%(levelname)s %(filename)s:%(lineno)d %(message)s"
logging.basicConfig(format=format_template)
logging.root.level = logging.INFO
