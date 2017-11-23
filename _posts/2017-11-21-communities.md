---
layout: post
title: "Network analysis updated - Communities within Denmark's Elite"
categories: network
date: 2017-11-18
---

After feedback from Anton Grau Larsen I've done two more versions of the graph an attempt to make the communities within the network more apparent. To do this I have transformed the graphs so that instead of showing individuals and organisations, I now show either [individuals](http://ronan-mch.github.io/elite/people.html) or [organisations](http://ronan-mch.github.io/elite/orgs.html). In the first case individuals are directly connected through shared membership of organisations while in the second case organisations are directly connected through shared members. The nodes have also been sized using betweenness centrality meaning that those nodes which are key connectors to other nodes will be relatively bigger; these are the nodes that bind the graph together.

## Communities

I find the organisation-organisation graph the most interesting one as it is easier to assess the communities, although people with a better knowledge of the individuals in the network might prefer the person-person network. It seems to me like the communities found are fairly reasonable but still supply a lot of interesting knowledge. Dansk Industri emerges as a key node in the center of the organisation graph. Via its board members it has connections to a huge number of companies, think-tanks, educational institutions etc. [Group five](http://ronan-mch.github.io/elite/orgs.html#rgb(115,192,0)) is also interesting, it seems to consist of the central labour organisation and its many connections, forming a community of unions, funds, state bodies etc. Similarly, we can also find communities of cultural institutions, [property developers and architects](http://ronan-mch.github.io/elite/orgs.html#rgb(0,189,148)). Some of the communities seem strange, for example the Danish handball union is in a community with the Danish Language and Literature Society. Perhaps such strange connections are the consequence of large nodes such as RealDania reaching into all parts of the graph.

## Who's got the power?

If we accept position in the graph as a valid metric of elite power, it is interesting to compare the popular support of political parties with their centrality in the graph. In a society where the structure of the elite mirrored the preferences of the electorate, one might expect the centrality of the different parties to match their position in the popular vote, but as we can see, this is not the case in Denmark.

<table class="table">
    <thead>
        <tr>
            <th>Party</th>
            <th>Place in vote 2011</th>
            <th>Centrality Rank</th>
            <th>Difference</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Venstre</td> <td>1 (26.7%)</td> <td>1 (0.31)</td> <td>0</td>
        </tr>
        <tr>
            <td>Socialdemokraterne</td> <td>2 (24.8%)</td> <td>3 (0.296)</td><td class="diff-neg">-1</td>
        </tr>
        <tr>
            <td>Dansk Folkeparti</td> <td>3 (12.3%)</td> <td>6 (0.28)</td><td class="diff-neg">-3</td>
        </tr>
        <tr>
            <td>Radikale Venstre</td> <td>4 (9.5%)</td> <td>5 (0.291)</td> <td class="diff-neg">-1</td>
        </tr>
        <tr>
            <td>Socialistisk Folkeparti</td> <td>5 (9.2%)</td> <td>4 (0.294)</td><td class="diff-pos">+1</td>
        </tr>
        <tr>
            <td>Enhedslisten</td><td>6 (6.7%)</td>  <td>7 (0.26)</td><td class="diff-neg">-1</td>
        </tr>
        <tr>
            <td>Liberal Alliance</td> <td>7 (5.0%)</td> <td>8 (0.26)</td><td class="diff-neg">-1</td>
        </tr>
        <tr>
            <td>Konservative Folkeparti</td> <td>8 (4.9%)</td> <td>2 (0.30)</td><td class="diff-pos">+6</td>
        </tr>
    </tbody>
</table>

The really interesting cases here are both on the right wing; Dansk Folkeparti is 6th in the centrality rankings although it polled 3rd in the popular vote, while Konservative Folkeparti are 2nd in the centrality rankings despite being the 8th most popular. What can explain this? Well, clearly, the elite is not a mirror of the parliament: it is defined by friendships and connections rather than the will of the electorate. It is probably in the interests of the elite to incorporate a certain level of the popular will, as failure to do so may lead to hostility and political instability in the long term, but there are a number of factors that push against this. Firstly, the political interests of some parties will be antithetical to those of the elite (for example, socialist parties such as Enhedslisten); secondly, members of new political movements may lack the personal connections and friendships that enable entry into the elite. I expect that it is especially an element of the latter that plays a role in Dansk Folkeparti's relatively low centrality.

Konservative Folkeparti probably benefit from the converse of these two factors: they are a far older, more established party, with a political agenda that chimes with the interests of the central business elite. There may also be an element of historical lag, as they were a major party for much of the 20th century.

It would be interesting to run this comparison again when the updated data is released, as it will allow us to see if there is any movement in the political parties' placement in the elite. I predict that Liberal Alliance will have become more central, while Dansk Folkeparti will have partially overcome their outsider status. Enhedslisten, by comparison, will probably have a larger mismatch as they were the 4th most popular at the elections in 2015, but their political project still places them at odds with the elite.

