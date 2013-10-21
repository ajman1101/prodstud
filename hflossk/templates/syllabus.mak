<%inherit file="master.mak"/>

<%def name="title()">
    Syllabus &mdash; The RIT HFOSS Development Course documentation
</%def>

<%def name="doc_toc()">
  <div class='affix well'>
    <ul class="list-unstyled">
      <li><a href="#course-info">Course Information</a></li>
      <li><a href="#text-books">Text Books</a></li>
      <li><a href="#what-you-ll-do">What You'll Do</a></li>
      <li><a href="#the-spirit-of-the-course">The spirit</a></li>
      <li><a href="#licensing">Licensing</a></li>
      <li><a href="#schedule">Schedule</a></li>
      <li><a href="#grading">Grading</a></li>
      <li><a href="#lightning-talks-extra-credit">Lightning Talks</a></li>
    </ul>
  </div>
</%def>
<div class="jumbotron" id="syllabus">
    <h1>Syllabus</h1>
</div>
<div class="section">
  <a class="headerlink" name="course-info"></a>
  <h2>${course['desc']}</h2>
  <blockquote>
    <div>
      <ul class="list-unstyled">
        <li>Instructor - ${instructor['name']} &lt;<a class="reference external" href="mailto:${instructor['email']}">${instructor['email']}</a>&gt;</li>
            <li>Office: ${instructor['office']['location']}</li>
            <li>Office Hours: ${instructor['office']['hours']}</li>
        <li>Teaching Assistant - David Wilson &lt;<a class="reference external" href="mailto:daw4475&#37;&#52;&#48;rit&#46;edu">daw4475<span>&#64;</span>rit<span>&#46;</span>edu</a>&gt;.  <span class="docutils literal" style="font-family: monospace;"><span class="pre">DAWacker</span></span> in IRC.</li>
        <li>IRC - irc.freenode.net, <span class="docutils literal" style="font-family: monospace;"><span class="pre">#rit-foss</span></span></li>
        <li>Blog Planet - <a class="reference external" href="http://foss.rit.edu/planet">http://foss.rit.edu/planet</a></li>
        <li>The source for this syllabus can be found at
        <a class="reference external" href="http://github.com/decause/hflossk">http://github.com/decause/hflossk</a></li>
      </ul>
    </div>
  </blockquote>
</div>
<div class="section">
  <a class="headerlink" name="text-books"></a>
  <h2>Text Books</h2>
  <p>There are a number of textbooks we&#8217;ll be referencing throughout the quarter. You can
  find these books/texts/articles here <a href="/oer">on the resources page</a></p>
</div>
<div class="section">
  <a class="headerlink" name="what-you-ll-do"></a>
  <h2>What You&#8217;ll Do</h2>
  <p>This course will introduce students to the Free and Open Source Software (FOSS)
  and Open Content movements, to the open source development process,
  and to the open questions of the efficacy of technology in the classroom.</p>
  <p>Students will learn FOSS process and Tools with class projects that
  support the One Laptop Per Child community by creating content and
  software for free distribution to students and teachers around the world.
  The OLPC project is driven by a world-wide community&#8211;one that students
  in HFOSS will become part of.</p>
  <p>For this course students will be expected to attend and make final
  presentations to the RIT and Rochester FOSS communities via the regular
  Rochester Pythonistas meet-ups and FOSSBox hack-a-thons when possible.
  Students will also become members of the Sugar and OLPC international
  communities. Local FOSS community members may join us in class sessions as
  well.  Treat them as you would another instructor, but they’re also your
  peers in moving this innovative project forward.</p>
</div>
<div class="section">
  <a class="headerlink" name="the-spirit-of-the-course"></a>
  <h2>The spirit of the course</h2>
  <p>While still a course where you will receive a letter grade, the spirit of the
  course is intended to be both <cite>open</cite> and <cite>fun</cite>.</p>
  <p>An <cite>open</cite> course &#8211; students will have access to the &#8216;document source&#8217; for the
  syllabus. While you are reading <cite>the syllabus</cite> right now,
  as a student of the class you have a right to <a class="reference external" href="http://github.com/decause/hflossk">fork the upstream repository</a>, make modifications, and submit patches for review. Barring a troll festival, this can create a fun,
  dynamic environment in which the course curriculum can develop by the very same
  mechanism being taught during the quarter (community-driven).</p>
</div>
<div class="section">
  <a class="headerlink" name="licensing"></a>
  <h2>Licensing</h2>
  <p>All code developed by students in the course must be licensed (by the student)
  under any one of the <a class="reference external" href="http://www.opensource.org/licenses/category">licenses approved by the open source initiative</a>.</p>
  <p>Your code that you write is your <strong>code</strong>, with which you can do what you will;
  true. However, if you&#8217;re unwilling to license code you write for an open source
  course with an open source license, you may be in the wrong course.</p>
</div>
<div class="section">
  <a class="headerlink" name="schedule"></a>
  <h2>Schedule</h2>
  <%
    from datetime import datetime, timedelta
    week = 0
  %>
  <table border="1" class="docutils">
  <colgroup>
  <col style="width: 5%;" />
  <col style="width: 4%;" />
  <col style="width: 38%;" />
  <col style="width: 26%;" />
  <col style="width: 26%;" />
  </colgroup>
  <tbody style="vertical-align: top;">
  <tr class="row-odd"><td>Week</td>
  <td>Day</td>
  <td>Topic</td>
  <td>Assigned</td>
  <td>Due</td>
  </tr>
  <tr class="row-even"><td rowspan="2">${week+1}</td>
    <td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week), '%m/%d')}</td>
    <td class="sessioncontent"><a href="/lectures/w1c2">Welcome, intro, Syllabus, RTFM</a></td>
    <td><a href="/books"><em>What is Open Source?</em> by Steve Weber</a></td>
    <td class="due">&nbsp;</td>
  </tr>
  <tr>
    <td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week, days=2), '%m/%d')}</td>
    <td class="sessioncontent">First Flight</td>
    <td><a href="/hw/firstflight"><em>Homework - First Flight</em></a></td>
    <td class="due">&nbsp;</td>
  </tr>
  <% week += 1 %>
  <tr class="row-odd"><td rowspan="2">${week+1}</td>
  <td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week), '%m/%d')}</td>
  <td class="cancelled">RIT CLOSED - Labor Day</td>
  <td id="assigned">&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  <tr class="row-odd"><td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week, days=2), '%m/%d')}</td>
  <td><a href="/lectures/w2c2">Formal Introduction to Git and Github</a></td>
  <td>&nbsp;</td>
  <td><a href="/hw/firstflight"><em>Homework - First Flight</em></a></td>
  </tr>
  <% week += 1 %>
  <tr class="row-even"><td rowspan="2">${week+1}</td>
  <td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week), '%m/%d')}</td>
  <td>Lit Review: What is Open Source?</td>
  <td>&nbsp;</td>
  <td><a href="/books"><em>What is Open Source?</em> by Steve Weber</a></td>
  </tr>
  <tr class="row-odd"><td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week, days=2), '%m/%d')}</td>
  <td>LIT: Rhetoric, Flamewars, and Trolling</td>
  <td><a href="/quiz/quiz1">TOSW Quiz</a></td>
  <td><a href="/quiz/quiz1">TOSW Quiz</a></td>
  </tr>
  <% week += 1 %>
  <tr class="row-even"><td rowspan="3">${week+1}</td>
  <td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week), '%m/%d')}</td>
  <td class="cancelled">MONDAY CANCELLED. GO TO ROC.py Tuesday!</td>
  <td><a  href="/hw/bugfix"><em>Homework - Bugfix</em></a></td>
  <td>&nbsp;</td>
  </tr>
  <tr class="row-odd"><td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week, days=2), '%m/%d')}</td>
  <td>EDU: Curriculum Exploration</td>
  <td><a href="/oer"><em>NY &amp; MA 4th Grade Curriculum</em></a></td>
  </tr>
  <tr class="row-odd"><td>***</td>
  <td><a target="_blank" href="http://wiki.softwarefreedomday.org/2013/USA/NY/Rochester/FOSS%40RIT">Software Freedom Day ROC 2013</a> location TBD(ish) <a target="_blank" href="http://bit.ly/rsvpsfdroc13">Sign-up</a></td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  <% week += 1 %>
  <tr class="row-even"><td rowspan="2">${week+1}</td>
  <td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week), '%m/%d')}</td>
  <td class="guest">COMMARCH: Git-by-a-bus and CCF: Callaway Coefficient of Fail. Special Guests: Tom Callaway and Ruth Suehle of Red Hat</td>
  <td><a target="_blank" href="/static/hw/commarch.txt">Commarch Report</a><br/>Commarch Team Formation</td>
  <td><a  href="/hw/bugfix"><em>Homework - Bugfix</em></a></td>
  </tr>
  <tr class="row-odd"><td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week, days=2), '%m/%d')}</td>
  <td class="guest">Guest Lecture: Gource, Mutli-Gource, Gourciferous by Zanarama. Special Guest Yannick Gingras, Production Engineer at Facebook.</td>
  <td>&nbsp;</td>
  <td>Commarch Team Formation</td>
  </tr>
  <% week += 1 %>
  <tr class="row-even"><td rowspan="2">${week+1}</td>
  <td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week), '%m/%d')}</td>
	<td>Commarch Presentations<div class="guest">Community Speaker: <a href="http://barcamproc.org" target="_blank" alt="Bar Camp Rochester">BarCamp Rochester</a> & <a href="http://www.meetup.com/HackshackersROC/" target="_blank" alt="Hacks and Hackers Rochester">Hacks/Hackers Rochester</a> with Chris Horn</div></td>
	<td><a  href="/static/hw/teamproposal.html"><em>Homework - Team Proposal</em></a></td>
  <td><a target="_blank" href="/static/hw/commarch.txt">Commarch Report</a></td>
  </tr>
  <tr class="row-odd"><td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week, days=2), '%m/%d')}</td>
  <td>"Teams Draft"</td>
  <td>&nbsp;</td>
  <td><a  href="/static/hw/teamproposal.html"><em>Homework - Team Proposal</em></a></td>
  </tr>
  <% week += 1 %>
  <tr class="row-even"><td rowspan="3">${week+1}</td>
  <td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week), '%m/%d')}</td>
  <td>Final Commarch Presentations and Open Team Time</td>
  <td>&nbsp;</td>
  <td><a href="/oer"><em>NY &amp; MA 4th Grade Curriculum</em></a></td>
  </tr>
  <tr class="row-odd"><td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week, days=2), '%m/%d')}</td>
  <td>OLPC Distribution &amp; Smoke testing</td>
  <td><span style="font-family: monospace;"><a target="_blank" href="/http://wiki.laptop.org/go/Smoke_test/10.1.x/1_hour_smoke_test">Smoke Test</a></span></td>
  <tr class="row-odd"><td>***</td>
  <td>Weekend Hackathon <a target="_blank" href="http://hackupstate.com">HackUpstate</a> in SYR</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  <% week += 1 %>
  <tr class="row-even"><td rowspan="2">${week+1}</td>
  <td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week), '%m/%d')}</td>
  <td class="special">TUESDAY 7-9pm ROCpy Meetup (carpool in parking lot 6:15pm)</td>
  <td><a target="_blank" href="http://www.meetup.com/Rochester-Python-Meetup/">ROCpy on Meetup.com</a><br/><span style="font-family: monospace;"><a target="_blank" href="http://wiki.laptop.org/go/Smoke_test/10.1.x/1_hour_smoke_test">Smoke Test</a></span></td>
  <td>&nbsp;</td>
  </tr>
  <tr class="row-odd"><td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week, days=2), '%m/%d')}</td>
  <td class="cancelled">decause flying to Google HQ. No Class.</td>
  <td><a target="_blank" href="https://www.google-melange.com/gsoc/events/google/gsoc2013">Google Summer of Code Mentor Summit</a></td>
  <td>&nbsp;</td>
  </tr>
  <% week += 1 %>
  <tr class="row-even"><td rowspan="2">${week+1}</td>
  <td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week), '%m/%d')}</td>
  <td class="tbd" >Guest Lecture: Advanced Python with threebean</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  <tr class="row-odd"><td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week, days=2), '%m/%d')}</td>
  <td>Decause lightening talk about conferences</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  <% week += 1 %>
  <tr class="row-even"><td rowspan="4">${week+1}</td>
  <td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week), '%m/%d')}</td>
  <td>TBD</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  <tr class="row-odd"><td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week, days=2), '%m/%d')}</td>
  <td>TBD</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  <tr class="row-odd"><td>***</td>
  <td class="hackathon"><a target="_blank" href="http://barcamproc.org">Pre-BarcampROC Hackathon </a> @ RIT</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  <tr class="row-odd"><td>***</td>
  <td class="hackathon"><a target="_blank" href="http://barcamproc.org">BarcampROC</a> @ RIT</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  <% week += 1 %>
  <tr class="row-even"><td rowspan="2">${week+1}</td>
  <td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week), '%m/%d')}</td>
  <td>TBD</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  <tr class="row-odd"><td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week, days=2), '%m/%d')}</td>
  <td>TBD</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  <% week += 1 %>
  <tr class="row-even"><td rowspan="2">${week+1}</td>
  <td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week), '%m/%d')}</td>
  <td>TBD</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  <tr class="row-odd"><td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week, days=2), '%m/%d')}</td>
  <td>User Testing</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  <% week += 1 %>
  <tr class="row-even"><td rowspan="2">${week+1}</td>
  <td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week), '%m/%d')}</td>
  <td class="special">TUESDAY 7-9pm ROCpy Demos (carpool in parking lot 6:15pm)</td>
  <td><a target="_blank" href="http://www.meetup.com/Rochester-Python-Meetup/">ROCpy on Meetup.com</a></td>
  <td>&nbsp;</td>
  </tr>
  <tr class="row-odd"><td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week, days=2), '%m/%d')}</td>
  <td class="guest">Guest Lecture: Intro to Natural Language Processing with Prof. Ovesdotter Alm</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  <% week += 1 %>
  <tr class="row-even"><td rowspan="2">${week+1}</td>
  <td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week), '%m/%d')}</td>
  <td>TBD</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  <tr class="row-odd"><td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week, days=2), '%m/%d')}</td>
  <td class="cancelled">Thanksgiving Break. No Class.</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  <% week += 1 %>
  <tr class="row-even"><td rowspan="2">${week+1}</td>
  <td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week), '%m/%d')}</td>
  <td>Packaging &amp; Releases</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  <tr class="row-odd"><td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week, days=2), '%m/%d')}</td>
  <td>Packaging &amp; Releases</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  <% week += 1 %>
  <tr class="row-even"><td rowspan="2">${week+1}</td>
  <td></td>
  <td class="special">FINAL PRESENTATIONS</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  <tr class="row-odd"><td class="sessionnumber">${datetime.strftime(course['start'] + timedelta(weeks=week, days=2), '%m/%d')}</td>
  <td>Return XO's &amp; Final Presentations (w/ Pizza)</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  </tbody>
  </table>
</div>
<div class="section">
  <a class="headerlink" name="grading"></a>
  <h2>Grading</h2>
<p>Assignments are due at 4:59pm of the day they are marked as due, to be useful in class.</p>
<p>Late submissions will be deducted 10% per day they are late.</p>
<hr class="docutils" />
<p>Your final grade for the quarter will be derived from the following weights.</p>
<table border="1" class="docutils">
<colgroup>
<col style="width: 80%;" />
<col style="width: 20%;" />
</colgroup>
<thead style="vertical-align: bottom;">
<tr class="row-odd"><th class="head">Component</th>
<th class="head">Weight</th>
</tr>
</thead>
<tbody style="vertical-align: top;">
<tr class="row-even"><td>In-Class Participation</td>
<td class="center"><span class="badge badge-warning">10%</span></td>
</tr>
<tr class="row-even"><td>Quizzes</td>
<td class="center"><span class="badge badge-warning">10%</span></td>
</tr>
<tr class="row-even"><td>Literature Reviews</td>
<td class="center"><span class="badge badge-warning">10%</span></td>
</tr>
<tr class="row-even"><td>Team Peer Assessment</td>
<td class="center"><span class="badge badge-info">15%</span></td>
</tr>
<tr class="row-even"><td>Completed Project</td>
<td class="center"><span class="badge badge-info">15%</span></td>
</tr>
<tr class="row-even"><td>Final Presentation</td>
<td class="center"><span class="badge badge-success">20%</span></td>
</tr>
<tr class="row-even"><td>FOSS Dev Practices (Blog posts, commits, tickets, IRC)</td>
<td class="center"><span class="badge badge-success">20%</span></td>
</tr>
</tbody>
</table>
<hr class="docutils" />
<p><em>Blog updates</em> &#8211; students are required to keep a blog to which they post updates
about their investigations, progress, success, and pitfalls. This blog can be
hosted anywhere, but must be added to the course <a href="/checkblogs">participant page</a> (there are instructions on how to do this
in <a class="reference internal" href="/hw/firstflight"><em>Homework - First Flight</em></a>).</p>
<blockquote>
<div><ul class="simple">
<li>You must make at least one blog post per week to receive full credit. A week Ends on Sunday at 11:59pm.</li>
<li>You must participate regularly in the course&#8217;s IRC channel: asking and answering questions.</li>
<li>Contributions to the course curriculum, syllabus, and rubric are factored in here as well.</li>
</ul>
</div></blockquote>
<p>Blogging is good for you and good for the <a class="reference external" href="http://xkcd.com/979/">FLOSS community at large</a>.</p>
<p>The details for the final can be found at <a class="reference internal" href="final.html"><em>Final</em></a>.</p>
</div>
<div class="section">
  <a class="headerlink" name="lightning-talks-extra-credit"></a>
  <h2>Lightning Talks - Extra Credit</h2>
<p>Every Wednesday for the first portion of class, any student has the opportunity
to give a <code><a class="reference external" href="http://en.wikipedia.org/wiki/Lightning_Talk">lightning talk</a></code> on a
topic of their chosing.  Your lightning talk must be less than 5 minutes in
length and must be at least remotely related to the course material.</p>
<p>You will receive +1 extra credit points towards your final grade for every
lightning talk you give. Only the first <span class="badge badge-important">2</span> lightning talks offered will be
allowed during a given class. Talks will be chosen from among those offered by
students on a <code><a target="_blank" href="http://en.wikipedia.org/wiki/FIFO">FIFO</a></code> basis.</p>
</div>
