
================================
Plone/WSGI as a Mongrel2 handler
================================

How
---

Clone this repository and run 'make' in the created directory.


Why
---

Running Plone as a WSGI application is the future. It's also plain
cool. 

Running Plone as a Mongrel2 handler add even more cool-aid. Frost-bite
warning!

The main idea is that with Mongrel2 you can:

- add new plone instances to handle additional load without reconfiguring 
  the front-end as required by traditional proxying solutions like nginx,
  varnish or ha-proxy.
- (more goodies to document here).

What
----

This buildout combines Plone4b2 with Mongrel2 using wsgid, using supervisord
to manage the processes.

Mongrel2, ZeroMQ and pyzmq are all installed during the buildout run.

The buildout requires the usual development chain for Plone:

- GCC
- Python-dev
- GIT

Status
------

This is just a proof of concept. Don't use this is a production setup just yet.

Issues
------

POST actions are broken, so no creation of content - yet. Other than that, accessing
content seems to work just fine.


Copyright
---------

License: GPLv2

NFG Net Facilities Group BV, paul@nfg.nl, 2012


