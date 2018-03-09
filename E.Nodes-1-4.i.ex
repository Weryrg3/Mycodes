# Exercise: Nodes-1
# Set up two terminal windows, and go to a different directory in each. Then
# start up a named node in each. In one window, write a function that lists
# the contents of the current directory.
# fun = fn -> IO.puts(Enum.join(File.ls!, ",")) end
# Run it twice, once on each node.
# Repondida no terminal, esse código ou nó consegue ver e interagir
# com outras pastas dependendo de onde o outro nó está
############################################################################

# Exercise: Nodes-2
# When I introduced the interval server, I said it sent a tick "about every 2
# seconds." But in the receive loop, it has an explicit timeout of 2,000 ms.
# Why did I say "about" when it looks as if the time should be pretty accurate?

# ?????????????????????????????????????

# Exercise: Nodes-3
# Alter the code so that successive ticks are sent to each registered client
# (so the first goes to the first client, the second to the next client, and so
# on). Once the last client receives a tick, the process starts back at the
# first. The solution should deal with new clients being added at any time.

# code here

# Exercise: Nodes-4
# The ticker process in this chapter is a central server that sends events to
# registered clients. Reimplement this as a ring of clients. A client sends a
# tick to the next client in the ring. After 2 seconds, that client sends a tick
# to its next client.
# When thinking about how to add clients to the ring, remember to deal
# with the case where a client’s receive loop times out just as you’re adding
# a new process. What does this say about who has to be responsible for
# updating the links?
