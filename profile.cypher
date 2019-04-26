CREATE CONSTRAINT ON (node:`UNIQUE IMPORT LABEL`) ASSERT (node.`UNIQUE IMPORT ID`) IS UNIQUE;
UNWIND [{_id:13, properties:{name:"Spring", label:"framework"}}, {_id:22, properties:{name:"React", label:"framework"}}, {_id:52, properties:{name:"Unity", label:"framework"}}, {_id:57, properties:{name:"Django", label:"framework"}}, {_id:74, properties:{name:"Hadoop", label:"framework"}}, {_id:65, properties:{name:"Vue", label:"framework"}}, {_id:163, properties:{name:"Hugo", label:"framework"}}] as row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:framework;
UNWIND [{_id:15, properties:{name:"OpenGL", label:"library"}}, {_id:4, properties:{name:"pwntools", label:"library"}}, {_id:5, properties:{name:"Z3 Solver", label:"library"}}, {_id:188, properties:{name:"ffmpeg", label:"library"}}] as row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:library;
UNWIND [{_id:27, properties:{name:"Neo4J", label:"database"}}, {_id:6, properties:{name:"PostgreSQL", label:"database"}}, {_id:71, properties:{name:"MySQL", label:"database"}}] as row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:database;
UNWIND [{_id:59, properties:{name:"Google Cloud Platform", label:"infrastructure"}}, {_id:200, properties:{name:"Microsoft Azure", label:"infrastructure"}}] as row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:infrastructure;
UNWIND [{_id:0, properties:{name:"Daniel Brodsky", from:"Vancouver, Canada", label:["About me"], email:"danbrodsky@pm.me"}}] as row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:`About me`;
UNWIND [{_id:7, properties:{year:"2018", name:"PicoCTF", label:"ctf", team:"solo", status:"25000pt"}}, {_id:30, properties:{year:"2019", name:"TCTF", label:"ctf", team:"Maple Bacon", status:"22nd place"}}, {_id:90, properties:{name:"WebGoat", label:"ctf", `label.0`:"ctf", url:"https://www.owasp.org/index.php/Category:OWASP_WebGoat_Project", status:"100% complete"}}, {_id:167, properties:{year:2019, name:"Mitre STEM CTF", label:"ctf", status:"2nd place (college, unofficial)"}}, {_id:180, properties:{year:2018, name:"KringleCon", label:"ctf", url:"https://holidayhackchallenge.com/2018/index.html", status:"100% complete"}}] as row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ctf;
UNWIND [{_id:20, properties:{name:"C", label:"language"}}, {_id:43, properties:{name:"Bash", label:"language"}}, {_id:44, properties:{name:"Go", label:"language"}}, {_id:45, properties:{name:"PHP", label:"language"}}, {_id:60, properties:{name:"JavaScript", label:"language"}}, {_id:40, properties:{name:"C++", label:"language"}}, {_id:50, properties:{name:"x86", label:"language"}}, {_id:63, properties:{name:"C#", label:"language"}}, {_id:41, properties:{name:"Java", label:"language"}}, {_id:42, properties:{name:"Python", label:"language"}}, {_id:197, properties:{name:"Powershell", label:"language"}}] as row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:language;
UNWIND [{_id:54, properties:{duration:"4 months", period:"May-Aug 2018", role:"Software Engineering Intern", name:"HSBC", label:"company"}}, {_id:55, properties:{duration:"8 months", period:"Sept-Apr 2016/7", role:"Security Software Engineer Intern", name:"TELUS", label:"company"}}] as row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:company;
UNWIND [{_id:12, properties:{name:"Methanex IT Portfolio", description:"Web application built for management of IT employees at Methanex", label:"project", url:"https://github.com/danbrodsky/methanex"}}, {_id:58, properties:{name:"Automated SemVer", descrption:"bash script for HSBC web applications that automatically increments semantic versions", label:"project"}}, {_id:11, properties:{name:"Personal Site", description:"You're looking at it :)", label:"project"}}, {_id:23, properties:{name:"decentralized cloud gaming platform", description:"Application for connecting host machines to client machines and sending low-latency video/key input data between them", label:"project", url:"https://github.com/danbrodsky/Cygnus"}}, {_id:28, properties:{name:"OAuth2 Authentication Service", description:"Service built using OpenAM to connect new web applications to existing auth infrastructure", label:"project"}}, {_id:29, properties:{name:"Encrypted Messaging Application", description:"IP-to-IP chat application that secures messages using the Diffie-Hellman key exchange protocol", label:"project", url:"https://github.com/agottardo/442VPN"}}, {_id:14, properties:{name:"Casteaway: A Tower-Defense Adventure", label:"project"}}, {_id:53, properties:{name:"FFTA Engine", description:"An attempt at re-creating the turn-based engine from Final Fantasy Tactics Advanced", label:"project", url:"https://github.com/danbrodsky/FFTA-Engine"}}, {_id:56, properties:{name:"Security Event Management Interface", description:"Interface that displays select data from the main Hadoop cluster of important recent events", label:"project"}}, {_id:69, properties:{name:"Deep Packet Inspection Interface", description:"Web application for monitoring and managing incoming traffic", label:"project", url:"https://github.com/danbrodsky/Pantoptes"}}, {_id:73, properties:{name:"React Standardization Platform", description:"Library of modular ARIA snippets written in React for HSBC web applications", label:"project"}}, {_id:51, properties:{name:"Blockchain Filesystem", description:"Blockchain built from scratch in Go that maintains a rebuildable records store", label:"project", url:"https://github.com/danbrodsky/Record_Filesystem_Blockchain"}}, {_id:67, properties:{name:"browser cache", description:"Simple browser proxy that caches recent pages visited in a MongoDB data store", label:"project", url:"https://github.com/danbrodsky/web_cache"}}, {_id:68, properties:{name:"Xeros Operating System kernel", description:"Basic functionality kernel with process and device dispatching", label:"project", url:"https://github.com/danbrodsky/Xeros_OS_Kernel"}}] as row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:project;
UNWIND [{_id:3, properties:{name:"Ghidra", label:"tool"}}, {_id:1, properties:{name:"Emacs", label:"tool"}}, {_id:2, properties:{name:"Burpsuite", label:"tool"}}, {_id:48, properties:{name:"GDB", label:"tool"}}, {_id:47, properties:{name:"Wireshark", label:"tool"}}, {_id:49, properties:{name:"Vim", label:"tool"}}] as row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:tool;
UNWIND [{start: {_id:14}, end: {_id:40}, properties:{}}, {start: {_id:12}, end: {_id:41}, properties:{}}, {start: {_id:12}, end: {_id:60}, properties:{}}, {start: {_id:68}, end: {_id:20}, properties:{}}, {start: {_id:69}, end: {_id:44}, properties:{}}, {start: {_id:69}, end: {_id:60}, properties:{}}, {start: {_id:69}, end: {_id:42}, properties:{}}, {start: {_id:56}, end: {_id:41}, properties:{}}, {start: {_id:68}, end: {_id:50}, properties:{}}, {start: {_id:23}, end: {_id:44}, properties:{}}, {start: {_id:51}, end: {_id:44}, properties:{}}, {start: {_id:67}, end: {_id:44}, properties:{}}, {start: {_id:56}, end: {_id:42}, properties:{}}, {start: {_id:73}, end: {_id:60}, properties:{}}, {start: {_id:11}, end: {_id:60}, properties:{}}, {start: {_id:28}, end: {_id:41}, properties:{}}, {start: {_id:53}, end: {_id:63}, properties:{}}, {start: {_id:28}, end: {_id:60}, properties:{}}, {start: {_id:58}, end: {_id:43}, properties:{}}, {start: {_id:29}, end: {_id:41}, properties:{}}] as row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USING]->(end) SET r += row.properties;
UNWIND [{start: {_id:69}, end: {_id:45}, properties:{}}] as row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USING]->(end) SET r += row.properties;
UNWIND [{start: {_id:51}, end: {_id:200}, properties:{}}, {start: {_id:23}, end: {_id:200}, properties:{}}, {start: {_id:28}, end: {_id:59}, properties:{}}] as row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USING]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:5}, properties:{}}, {start: {_id:7}, end: {_id:5}, properties:{}}, {start: {_id:7}, end: {_id:4}, properties:{}}, {start: {_id:167}, end: {_id:4}, properties:{}}] as row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USING]->(end) SET r += row.properties;
UNWIND [{start: {_id:23}, end: {_id:188}, properties:{}}, {start: {_id:14}, end: {_id:15}, properties:{}}] as row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USING]->(end) SET r += row.properties;
UNWIND [{start: {_id:56}, end: {_id:71}, properties:{}}, {start: {_id:12}, end: {_id:6}, properties:{}}, {start: {_id:69}, end: {_id:6}, properties:{}}, {start: {_id:11}, end: {_id:27}, properties:{}}] as row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USING]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:54}, properties:{}}, {start: {_id:0}, end: {_id:55}, properties:{}}] as row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:`WORKED AT`]->(end) SET r += row.properties;
UNWIND [{start: {_id:73}, end: {_id:22}, properties:{}}, {start: {_id:56}, end: {_id:74}, properties:{}}, {start: {_id:12}, end: {_id:13}, properties:{}}, {start: {_id:11}, end: {_id:163}, properties:{}}, {start: {_id:53}, end: {_id:52}, properties:{}}, {start: {_id:56}, end: {_id:57}, properties:{}}, {start: {_id:12}, end: {_id:65}, properties:{}}] as row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USING]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:23}, properties:{}}, {start: {_id:0}, end: {_id:28}, properties:{}}, {start: {_id:0}, end: {_id:12}, properties:{}}, {start: {_id:0}, end: {_id:14}, properties:{}}, {start: {_id:0}, end: {_id:56}, properties:{}}, {start: {_id:0}, end: {_id:58}, properties:{}}, {start: {_id:0}, end: {_id:67}, properties:{}}, {start: {_id:0}, end: {_id:68}, properties:{}}, {start: {_id:0}, end: {_id:29}, properties:{}}, {start: {_id:0}, end: {_id:51}, properties:{}}, {start: {_id:0}, end: {_id:53}, properties:{}}, {start: {_id:0}, end: {_id:11}, properties:{}}, {start: {_id:0}, end: {_id:69}, properties:{}}, {start: {_id:0}, end: {_id:73}, properties:{}}] as row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CREATED]->(end) SET r += row.properties;
UNWIND [{start: {_id:180}, end: {_id:47}, properties:{}}, {start: {_id:90}, end: {_id:2}, properties:{}}, {start: {_id:30}, end: {_id:48}, properties:{}}, {start: {_id:30}, end: {_id:3}, properties:{}}, {start: {_id:167}, end: {_id:48}, properties:{}}, {start: {_id:7}, end: {_id:48}, properties:{}}, {start: {_id:7}, end: {_id:3}, properties:{}}, {start: {_id:7}, end: {_id:47}, properties:{}}] as row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USING]->(end) SET r += row.properties;
UNWIND [{start: {_id:7}, end: {_id:42}, properties:{}}, {start: {_id:180}, end: {_id:60}, properties:{}}, {start: {_id:167}, end: {_id:42}, properties:{}}, {start: {_id:30}, end: {_id:42}, properties:{}}, {start: {_id:180}, end: {_id:42}, properties:{}}, {start: {_id:90}, end: {_id:60}, properties:{}}, {start: {_id:180}, end: {_id:197}, properties:{}}, {start: {_id:167}, end: {_id:43}, properties:{}}, {start: {_id:7}, end: {_id:43}, properties:{}}, {start: {_id:7}, end: {_id:20}, properties:{}}, {start: {_id:7}, end: {_id:50}, properties:{}}] as row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USING]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:7}, properties:{}}, {start: {_id:0}, end: {_id:180}, properties:{}}, {start: {_id:0}, end: {_id:30}, properties:{}}, {start: {_id:0}, end: {_id:167}, properties:{}}, {start: {_id:0}, end: {_id:90}, properties:{}}] as row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PARTICIPANT]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:1}, properties:{}}, {start: {_id:0}, end: {_id:49}, properties:{}}, {start: {_id:0}, end: {_id:2}, properties:{}}] as row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES]->(end) SET r += row.properties;
UNWIND [{start: {_id:56}, end: {_id:55}, properties:{}}, {start: {_id:58}, end: {_id:54}, properties:{}}, {start: {_id:73}, end: {_id:54}, properties:{}}, {start: {_id:28}, end: {_id:54}, properties:{}}] as row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:`MADE AT`]->(end) SET r += row.properties;
MATCH (n:`UNIQUE IMPORT LABEL`)  WITH n LIMIT 20000 REMOVE n:`UNIQUE IMPORT LABEL` REMOVE n.`UNIQUE IMPORT ID`;
DROP CONSTRAINT ON (node:`UNIQUE IMPORT LABEL`) ASSERT (node.`UNIQUE IMPORT ID`) IS UNIQUE;
