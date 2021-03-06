-- Make sure the module is loaded.
-- FIXME(seanc@): this is broken.  Why do I have to call the function to
-- initialize the shared object?  Something's broken here that I don't
-- understand yet and the oversight isn't jumping out at me.  Moving on, but
-- marking this as a bug.
SELECT consul_agent_ping();

-- PASS: Make sure we only have one peer for the time being
SELECT COUNT(*) FROM consul_status_peers();

-- PASS: Grab the current list of peers
SELECT * FROM consul_status_peers() ORDER BY host;
