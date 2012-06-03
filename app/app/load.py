
from Zope2.Startup.run import make_wsgi_app
conf = "/home/paul/plonewsgi/parts/plone/etc/zope.conf"
application = make_wsgi_app(None, conf)

