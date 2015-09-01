letsdothis = Team.create(name: "Watch the egg FLY!!", email: "wouldntyou@know.edu")
imconfused = Team.create(name: "Watch the egg DIVE!!", email: "egg@time.now")
teamegg = Team.create(name: "TEAM EGG!", email: "eggs@eggs.eggs")

rule1 = Rule.create(content: "Must carry egg")
rule2 = Rule.create(content: "Must be brown eggs")
rule3 = Rule.create(content: "Must travel at least 10 feet")
rule4 = Rule.create(content: "Egg must not crack on landing")

crazybob = Member.create(name: "Bob", email: "lick@lick.org")
crazyliz = Member.create(name: "Liz", email: "tick@tick.org")
crazytim = Member.create(name: "Tim", email: "quick@quick.org")

letsdothis.members << crazybob
imconfused.members << [crazytim, crazyliz]

opinion1 = Rule_vote.create(yes?: true)
opinion2 = Rule_vote.create(yes?: false)
opinion3 = Rule_vote.create(yes?: false)
opinion4 = Rule_vote.create(yes?: true)
opinion5 = Rule_vote.create(yes?: true)

rule1.rule_votes << opinion1
rule1.rule_votes << [opinion2, opinion3, opinion4, opinion5]
team

rule2.rule_votes << [opinion2, opinion3, opinion4]