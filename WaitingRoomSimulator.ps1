$banner = @"
 __      __       .__  __  .__                 __________                          _________.__              .__          __                
/  \    /  \____  |__|/  |_|__| ____    ____   \______   \ ____   ____   _____    /   _____/|__| _____  __ __|  | _____ _/  |_  ___________ 
\   \/\/   |__  \ |  \   __\  |/    \  / ___\   |       _//  _ \ /  _ \ /     \   \_____  \ |  |/     \|  |  \  | \__  \\   __\/  _ \_  __ \
 \        / / __ \|  ||  | |  |   |  \/ /_/  >  |    |   (  <_> |  <_> )  Y Y  \  /        \|  |  Y Y  \  |  /  |__/ __ \|  | (  <_> )  | \/
  \__/\  / (____  /__||__| |__|___|  /\___  /   |____|_  /\____/ \____/|__|_|  / /_______  /|__|__|_|  /____/|____(____  /__|  \____/|__|   
       \/       \/                 \//_____/           \/                    \/          \/          \/                \/                   

"@

$global:player = ""
$stopwatch = New-Object -TypeName System.Diagnostics.Stopwatch
$global:waitTime = 0

function Generate-WaitTime {
    $x = Get-Random -Minimum 900 -Maximum 1200
    $x
}

function Get-Seat{
    $chair = Read-Host "Pick chair 1 through 5"
    switch ($chair) 
    {
        1 {"Great. You're by a crying baby."}
        2 {"Some person's kid keeps asking you questions and the parent doesn't seem to care."}
        3 {"This seat is under a vent. Brr." }
        4 {"This seat is broken and wobbles. Mildly inconvenient." }
        5 {"Nothing seems to be wrong with this chair. Nice. Normal." }
        Default { Get-Seat }
    }
    $change = Read-Host "Would you like to change chairs? Yes/No"
    if ($change.ToLower().StartsWith("y")) {
        Get-Seat
    }   
} 

function Get-Magazine {
    
    Write-Host "The following magazines are available to read:"
    Write-Host "1. Time"
    Write-Host "2. People"
    Write-Host "3. Motortrend"
    Write-Host "4. Field and Stream"
    Write-Host "5. Golf Digest"
    Write-Host ""
    $choice = Read-Host "Enter the number of what you feel like reading or enter any other character to just not read I guess"
    switch ($choice) 
    {
        1 {Read-Magazine "Time Magazine"}
        2 {Read-Magazine "People Magazine"}
        3 {Read-Magazine "Motortrend"}
        4 {Read-Magazine "Field and Stream"}
        5 {Read-Magazine "Golf Digest"}
        Default {}
    }
}

function Read-Magazine ($magazine)
{

$time1 = @"

Here's Why So Many Grocery Store Staples Are So Expensive Right Now

Heidi Leggett, a mother of five boys in southwest Virginia, has seen her family's 
monthly spending on groceries increase from `$2,200 to `$3,000 in recent months. 
Like many across the U.S., her family is buying less and being more frugal with meals 
as prices of just about every food item have risen.

"We either have no leftovers or we plan a larger meal so we can eat leftovers for a 
few days," says Leggett, who recently went back to work as a lobbyist to help her 
family deal with inflation. "Our quality of life has gone down. Worrying all of 
the time about what could be next is frightening. All we can think about is making 
our kids know that we will be OK and they will be taken care of."

Although overall inflation is starting to cool, shoppers haven't seen much relief 
in terms of grocery prices, which were up 11.8% in December compared with a year 
earlier. Gone are the days when someone could walk into a grocery store and buy a 
dozen eggs for `$1.50 or a gallon of milk for under `$3. Instead, nearly every food group 
costs more than it did a year ago: grade A eggs are up 138%; margarine, up 43.8%; butter 
sticks, up 38.5%; all-purpose flour, up 34.5%; and spaghetti and macaroni noodles up 
31.3%, according to the most recent Bureau of Labor Statistics (BLS) data.

Many shoppers who TIME spoke with are struggling to keep up and asking when it will end.

Bridgette Moore, a 40-year-old mom of five from Lake Park, Ga., says she's noticed that 
eating at fast food restaurants is now cheaper than purchasing healthy food from the store, 
even as she is more selective about her family's needs and buys less items. "I haven't 
had to work since 2009 and now with five kids, it is becoming more and more difficult 
to afford basic necessities," she says. "It makes me feel upset and mad that my grocery 
bill has jumped over `$200 per week. I didn't expect to be in this situation, and it is 
a struggle to make ends meet."

The stories these people shared painted a picture of the trade-offs and difficult decisions 
families across the nation are facing to afford everyday pantry items. For many, the 
frustration is starting to boil over.

"I am not happy with the state of the U.S. economy right now," says Moore. "As a stay-at-home 
mom, I am worried about how I will provide for my family and it is difficult to see a way out. 
I hope that it will get better but with the current economic state, it is hard to say. We 
shouldn't be struggling at this stage in life and we were not before."

Analysts say that there's no straight answer on when grocery prices will drop as it relies 
on a number of factors, including post-pandemic consumer demand, ongoing supply chain shortages, 
geopolitical events such as the war in Ukraine, and unstable weather patterns.

But many of these key factors fueling inflation are starting to fade—meaning prices should 
stabilize this year, even if they may never go back down to pre-pandemic levels. Shipping costs 
are declining and Americans are purchasing less as they feel the pinch of inflation. Tom Bailey, 
senior analyst of consumer foods with Rabobank, predicts that prices will soften up in early 2023 
as we "revert back to more improved production and more reasonable demand."

Still, there's a possibility that some prices continue to rise. "If the last 24 months have told 
us anything, don't ever assume that things can't change or get away from us," he says.

Here is a guide to which food items are more expensive and why.
Chicken and eggs

A dozen grade A eggs cost, on average, `$4.25 in December—making it the grocery stable with the 
largest year-over-year price increase. This is largely attributed to the ongoing avian bird flu 
epidemic, in which nearly 58 million birds have been infected as of January 6—the deadliest outbreak 
in U.S. history. Infected birds must be slaughtered, causing egg supplies to fall and prices to surge. 
The U.S. does not currently vaccinate chickens against the avian influenza virus, unlike Mexico and China.

"This is the largest animal emergency that USDA has ever faced in this country," says Gino Lorenzoni, 
an assistant professor of poultry science and avian health at Penn State University. "And it doesn't 
look like it's going to stop anytime soon."
"@

$time2 = @"

What to Know if Your Doctor Put You on Statins to Lower Cholesterol

High cholesterol is a prime example of having too much of a good thing. Our bodies naturally make this 
substance in the liver and then transport it throughout the body for multiple functions, including hormone 
regulation, cell tissue regeneration, and vitamin absorption. When the system is working well, cholesterol 
can boost overall health. But when a certain type called low-density lipoprotein—LDL, sometimes dubbed the 
"bad" kind—is overproduced, not only does it block the "good" kind called high-density lipoprotein (HDL), 
but it can also begin to accumulate in the arteries and form thick, hard deposits. This narrows the space 
for blood flow and raises the risk of blood clots, which can lead to heart attack or stroke. The U.S. Centers 
for Disease Control and Prevention (CDC) notes that about 93 million American adults have high cholesterol, 
which represents about 36% of the U.S. adult population.

High cholesterol rarely presents with symptoms in its early stages, which is why knowing your cholesterol 
levels and reducing LDL if it's getting too high is crucial for heart health. For many people, a type of 
medication known as statins may be a recommended step for cardiovascular risk prevention. First approved 
by the U.S. Food and Drug Administration in 1985, these drugs work by blocking a substance your body uses 
to make cholesterol, which can reduce the level of LDL cholesterol and also help stabilize the plaques on 
blood vessels so they don't break off and become problematic.

According to the CDC, statin use has been growing for the past decade, and nearly 39 million Americans take 
a statin daily. Usage increases over age 40 since heart risks tend to escalate as we get older. However, a 
statin prescription isn't a guarantee for everyone.

Here are answers to five key questions about this common medication, along with advice on when to talk to 
your doctor.

How do statins work?

Much like lowering production in a factory, statins work by reducing the amount of cholesterol produced by 
the liver. They also help the liver remove cholesterol already in the blood, which can reduce the chances 
that you'll develop deposits in the arteries.

This differs from other types of cholesterol-lowering medications because rather than trying to eliminate 
excess cholesterol once it's manufactured, statins target the source of that production.

For example, injectable medicines called PCSK9 inhibitors lower cholesterol by blocking the LDL receptors in 
the body, resulting in how much cholesterol circulates in the bloodstream. There's also niacin, sometimes 
called nicotinic acid, which works by raising HDL cholesterol levels—an action that lowers LDL cholesterol 
as a result.
"@

$people1 = @"

Katy Perry Joins Fiancé Orlando Bloom's Ex Miranda Kerr on G'Day USA Arts Gala Red Carpet

Katy Perry and Miranda Kerr are two peas in a pod!

The singer, 38, and model, 39, walked the red carpet of the 20th annual G'Day USA Arts Gala in Los Angeles 
on Saturday, where they posed for photographs with one another.

For the night out, Perry — who is engaged to Kerr's ex-husband, Orlando Bloom — wore a Zimmerman outfit 
composed of a shiny metallic bralette top that was paired with a matching floor-length ballgown skirt.

Kerr, meanwhile, wore a stylish white ruffled strapless dress. She received the Excellence in the Arts 
award from Perry at the annual event.

Miranda Kerr 'Adores' Katy Perry, Is Grateful Son Flynn Has 'Four Happy Parents Who Get Along'

During her intro for Kerr, Perry playfully teased their family dynamic, telling audience members, "Some of 
you might be confused about why I'm introducing Miranda. That doesn't play into the antiquated narrative of 
ex-wives and new wives."

"And yes, it's true, most of the media would like to see us mud wrestle, including [her husband] Evan [Spiegel], 
but we are here to lead by love because Miranda is love," she continued. "And as a lot of you know, love comes 
in many family iterations."

Then stating that she is "proud to be family with a woman who is living her truth every day with grace and beauty," 
Perry said that Kerr is "dedicated to her three beautiful boys, her partner, and that smoking hot bod."

"I'm so grateful for our modern blended family. It's like I gained another sister, one with whom I usually 
sidebar from the main family chat and agree with," she concluded. 
"@

$people2 = @"

Eddie Murphy Says He'd 'Absolutely' Reprise 'Shrek' Role of Donkey: 'I'd Do It in 2 Seconds'

Eddie Murphy hasn't moved on from his noble steed quite yet!

The comedy icon, 61, revealed in a new interview with Etalk that he'd reprise his role as Donkey in the Shrek 
franchise if the opportunity presented itself.

"I'd absolutely be open if they ever came with another Shrek, I'd do it in two seconds. I love Donkey," Murphy 
told Etalk. 

Of course, Murphy's revelation comes over a month after Puss in Boots: The Last Wish, a film surrounding another 
Shrek franchise character voiced by Antonio Banderas, hit theaters. The movie was a critical and commercial success 
and was recently nominated for an Academy Award nomination for Best Animated Feature Film.

"You know, they did Puss in Boots movies," Murphy said. "I was like, 'They should have done a Donkey movie. Donkey 
is funnier than Puss in Boots.' I mean, I love Puss in Boots, but he ain't funny as the Donkey."

Pushing for his hilarious, furry character to get a solo outing, Murphy added that he would definitely be up for 
voicing a Donkey movie. 
"@

$motortrend1 = @"

Road Trips in Our Long-Term EVs Have Been...Interesting

While winter has seen many travelers stranded at airport check-in counters this year, MotorTrend editors have been 
braving the open road in our expanding fleet of long-term electric cars, trucks, and SUVs. During road-trips, MT's 
Slack channels often become a de facto logbook of our exploits, capturing the headaches and small victories of 
long-distance EV driving in real time. Here's a lightly edited look at how our drivers have fared in the 2022 
Ford F-150 Lightning, the 2022 Rivian R1T, the 2022 Volkswagen ID4, the 2022 Lucid Air Grand Touring Performance, 
and the 2023 Hyundai Ioniq 5 when holiday travel peaked, the weather and temperatures turned nasty, or they simply 
headed to far-flung destinations. 

Road-tripped from Los Angeles to Sacramento in the long-term ID4 yesterday. I charged to 100 percent at home and 
pushed to Harris Ranch [a popular charging spot along the busy I-5 corridor—Ed.], coming in hot with full bladders, 
10 percent state of charge, and 24 miles of range. The latter was a bad idea. It basically left me with few options 
other than the chargers at Harris Ranch, and the Electrify America Level 3 DC fast chargers there were all full. 
Very busy travel day. I crossed the freeway to check out some ChargePoints, and what luck: The bank of three DC fasts 
were totally unattended—because they were busted. Next to those was a Level 2 6.5-kW ChargePoint charger that we jumped 
onto while evaluating options. If I stayed on the Level 2, it would have been 9 hours to get the charge we needed to 
make it to our destination.

So, I drove back to the Electrify America stations to wait on a charger, and thankfully one freed up immediately. Charged 
for 45 minutes, snacked, and left. While sitting in the ID4, I saw about six EVs come creeping, waiting to charge. 
Average wait time was 7 to 10 min (thank goodness for charger-squatting penalties). Saw two Rivian R1S's, two Hyundai 
Ioniq 5s, one Chevrolet Bolt, and one Kia EV6.
"@

$motortrend2 = @"

These Are the Best Used Cars Under `$10,000

If it feels like it used to be easier to find used cars that were both affordable and appealing, that's because it was. 
The average price of a used car soared beyond `$30,000 last year, to the detriment of budget-conscious buyers. To provide 
guidance to befuddled shoppers, we've compiled a list of the best used cars under `$10,000.

We looked at the newest cars possible while parsing IntelliChoice data, resulting in a model year range of 2015-2017. 
All of the cars featured are small and, when they were new, were among the most affordable vehicles on the market. They 
aren't particularly glamorous or well-equipped cars either. Although regional market conditions can shift this picture, 
in general, shoppers at this price point should reevaluate their expectations. Practicality, reliability, and fuel 
efficiency come before style and fun for most of the cars we recommend here.
"@

$field1 = @"

Bowhunter Takes State's No. 2 Buck, While Going No. 2

Back on November 21st, Massachusetts bowhunter Chris Alberini climbed into his tree stand, trying 
to hold in his excitement as he hoped to waylay one of the biggest whitetail deer he'd has his eye 
on for years. But after drinking too much coffee, he was forced to scoot back down to the ground 
to do his business. He moved off a ways, dropped trou…and all of a sudden, there was a movement that 
 to Alberini taking a new No. 2 that measured 196 1/8 inches. We'll explain.

Working Up to It

The story actually starts way back in 2016, when a friend of Alberini's got a picture of the buck on 
trail camera. In fact, he got a shot at the buck that fall, but it wasn't a lethal hit. The next year, 
in 2017, Alberini started getting pics of the buck and continued to for several years. All the while, 
the buck became notorious for covering a lot of ground in the suburban area they hunted. Alberini knew 
that other hunters were chasing the buck too. "From one point to the other, we probably had him up to 
5 miles apart on the edge of his range. He was all over the place during the rut."

All the hunters pursuing the deer were getting trail-cam photos, but nothing consistent. So, Alberini 
studied apps and maps to try to determine where the big whitetail's core area was. He never pinned it 
down, exactly, but he felt pretty sure it was on a nearby property that didn't allow hunting.

There was a pine thicket close to that location, however, to which he did have access. Two seasons ago, 
he posted some cameras there, and learned that the buck hung out in the spot for several days during the 
rut in both 2020 and 2021. This year, he hung a cell camera there and planned to move in as soon as he 
got a photo of the deer.

False Alarm

He hunted the spot twice in mid-October and saw the buck multiple times on the second day. Three times, 
a doe tried to run out of the thicket, and he cut her off and corralled her back into the cover. The final 
time, right at dark, the buck chased a 6-pointer out of the area. "He shot past me me at 40 yards," Alberini 
told Field & Stream. "And when he came back, I got a shot—but missed. A deer that I've been chasing this long, 
one that I never see and finally do…I was devastated."

His wife and friends encouraged him to keep hunting, and he was back in the spot for an all-day sit on November 
21. He settled in before daylight and saw several deer that morning. A huge 8-pointer walked by, but with only 
one buck tag left in his pocket, he passed it in hopes of seeing the giant buck. "It was the hardest pass of 
my life," Alberini told Field & Stream. "This was a big, mature 8-pointer, and I let him walk. He went into 
the bedding cover where I figured the big buck was."

Around 10:30 a.m., after watching a spike buck chase a doe around—and after drinking a bunch of coffee on 
stand—nature began calling. "I was like, what am I going to do?" Alberini said. "I couldn't get around it. 
I lowered my bow, grabbed some t.p. from my pack, and got to the bottom of the stand. Mind you, it was in the 
20s that morning. It was cold."

Once on the ground, he undid his saddle gear, left his heavy outer layers at the bottom of the tree, grabbed 
his bow, and went about 60 yards away from his hunting spot and the main trail to pop a squat. "As soon as I 
get started, this huge commotion breaks loose."

And it wasn't happening on the ground beneath him, either. It was two does barreling full speed out of the swamp. 
A small 8-pointer was following them, and a big buck was bringing up, well, the rear. The whitetails got within 
40 yards of him, saw his pile of clothes under the tree, and locked up right there. Meanwhile, Alberini still had 
his pants around his ankles.

"The deer were running so fast that even if I was in the stand, I wouldn't have gotten a shot," Alberini said. 
"They were going full speed. Maybe I would have gotten an opportunity later, but not on that initial run."

At this point, he sees the massive buck. It turns its head, and the drop-tine makes it obvious—Alberini has the 
monster deer he's been chasing for years in bow range—and his pants are still around his ankles. Nonetheless, 
Alberini leaned back against the tree to grab his bow. As he does, the buck turns and starts walking directly 
toward him. At 30 yards, some brush obscures the buck's line of sight, and Alberini drew his bow. 
"@

$field2 = @"

How to Hunt Coyotes: A Beginner's Guide

Calling up and shooting a coyote—especially in the eastern United States—remains one of the most challenging 
hunts out there. But it doesn't require much gear and since most landowners will gladly let you hunt coyotes 
(especially after deer season), it's accessible. Here's a beginner's guide on how to hunt coyotes.  

How to Hunt Coyotes: Scouting Tips

Coyotes don't live everywhere, and you can't call them in if they're not there. As you're learning how to hunt 
coyotes, focus on areas that hold small game, birds, mice, and vermin. CRP fields, brushy creeks or river bottoms, 
swamps and marshes, and young clear-cut edges are all excellent choices. Don't be afraid to knock on farmhouse 
doors and ask. Pinpoint your spots by looking for tracks and listening for barks, yips, and howls at dawn and dusk.

The Best Time of Year for Coyote Hunting

Coyotes can be called in year-around, but late fall, when young adult males are establishing their own territories, 
is ideal. Late winter is a good time, too. Coyotes rut in January and February, so mixing coyote vocalizations with 
prey-in-distress sounds works well at that time. Cold, calm days are ideal for calling. Skip windy, warm days to 
wait for better conditions.

Keep Quiet

Stealth is the first priority if you're serious about learning how to hunt coyotes: no slamming vehicle doors or 
talking above a whisper to your partner. Settle into a comfortable shooting position on a knoll or field edge that 
offers good visibility. You want to call into the wind or with a crosswind, and always keep a good downwind shooting 
lane. Coyotes will usually circle downwind of distress sounds. Keeping an obstacle at your back, like a creek or fence 
row, can help steer them into the best shooting lanes. Wait five to 15 minutes after setting up before calling.

Sit Still

Coyotes have extremely keen eyesight and, like any animal coming to a call, are looking hard for its source. Make sure 
your camo is good and that your hands and face are covered. A feather tied to a string from an overhanging limb can 
serve as a good decoy and visual distraction. Many modern electronic callers come with built-in decoys that are highly 
effective, too.  

Most coyotes, if they're around, respond quickly once you begin calling, but give each set at least 20 minutes to a half 
hour. If no coyotes come to your calls, sneak back out and drive to another area at least a half mile away, and repeat 
the process. You should be able to cover eight to 10 good spots in a day of hunting and odds are, if your setups are good, 
at least one of those spots will produce a shot.
"@

$golf1 = @"

CALIFORNIA COOL: MAX HOMA SAVORS FOURTH VICTORY IN HIS HOME STATE AND FIRST AS A DAD

SAN DIEGO - It could be said that the Torrey Pines golf complex now represents 
something of a life-and-death circumstance for Max Homa when he's competes in 
the Farmers Insurance Open. Not literally, of course. But on the same grass, the 
popular Californian has both absorbed the loss of his childhood idol, NBA star 
Kobe Bryant, and the joys of cooing at his 2-month-old baby boy, Cam, as the newly 
crowned tournament champion.

As Homa fiercely battled a handful of major champions and a hopeful journeyman 
late in the fourth round of a Saturday conclusion on the Torrey Pines South Course, 
he said his mind did drift to thoughts of Bryant, of Kobe's competitive tenacity, 
and of his tragic death three years ago this week in a helicopter crash. That day, 
on Sunday at the Farmers, news of the Los Angeles Lakers great's passing drifted 
out to players either during their rounds or when they'd signed their cards.

"This place.. I have a weird feeling towards it," Homa said. "I love it, and it 
has like a weird sadness to it."

The emotional balance of that played out again and again for Homa during this 
Farmers week, with his wife, Lacey, walking a couple of rounds with their son 
in a baby carrier on her chest. And the happiness was never more palpable than 
after Homa made a short birdie putt on the 72nd hole to finish off a stirring 
final-round comeback. Five shots behind leader Sam Ryder at the start, Homa applied 
early pressure by shooting four under on the front, and he then birdied two of 
the harder par 3s on the PGA Tour, Nos. 11 and 16, to pull away with a six-under-par 
66 for his sixth career victory and second in three months.

Homa finished with a total of 13 under, two strokes better than former PGA Championship 
winner Keegan Bradley, who charged with his own 66. Collin Morikawa, the two-time major 
winner who did his best in the same group with Homa to push his fellow Cal alum, managed 
a 69 and finished solo third, three back.

Ryder, who is winless on tour and was trying to become this tournament's first 
wire-to-wire champion since Johnny Miller in 1982, stumbled with a back nine of 38, 
scored three-over 75 and tied for fourth. Jon Rahm, going for a victory in his third 
straight tour start and only two shots off the lead at the outset, suffered a bogey 
at the first hole and a double bogey at the fifth and never recovered in scoring 74 
to tie for seventh.

As he waited to try his final putt on the 18th, Homa broke his competitive concentration 
and looked around for Lacey and Cam. Once they made eye contact, he waved and smiled. 
When he'd made the four-foot birdie and retrieved his ball, the 32-year-old accepted 
congratulations and made a beeline to them and put his bearded face close to Cam's.

"[Cam] has no idea what I did," Homa said, "but I will tell him this story ad nauseam 
and he will probably think I'm the worst for it. But this will be my corny dad story 
that I will tell every Thanksgiving or something."
"@

$golf2 = @"

RORY MCILROY IN CONTROL IN DUBAI BUT A LATE SLIP MEANS MONDAY'S FINAL ROUND ISN'T A DONE DEAL

On the day that "moving day" moved by a day, Rory McIlroy made a move. While the Hero Dubai 
Desert Classic might be a full 24 hours behind schedule, the 32-year-old Northern Irishman 
will enter Monday's final round with no one ahead of him. Courtesy of a 65 that contained 
eight birdies and a lone bogey on the 18th, the World No. 1 is 15 under par and three-shots 
clear of two Englishmen, Callum Shinkwin and Dan Bradbury, with 18 holes of regulation play 
on the Majlis course at the Emirates Golf Club still to negotiate.

It was then, a day to remember for the leader, already a 15-time winner on the DP World Tour. 
Which is not to say that, despite two bursts of birdies—four to start his round and four more 
in five holes from the 13th—that threatened to put an end to any and all opposition, McIlroy 
was jumping with anything approaching joy at close of play.

In the fairway on the 18th after his 3-wood tee shot, the two-time winner here hit the ugliest 
of approach shots with the same club. Attempting to hit a "high, cutty one," McIlroy perpetrated 
what is best described as a "low, necky one" that was always destined to find the water in front 
of the putting surface. All in all, it was a near carbon-copy of the shot he hit with the same 
club from a similar place on the same hole exactly a year ago.

Making things worse this time round is that, after a cooly played pitch, McIlroy missed from 
close range for par. He wasn't saying so afterwards, but his face betrayed the inescapable 
notion that he had missed a chance to all but put an end to the hopes of the chasing pack. A 
closing birdie and a five-shot edge would have made it difficult to imagine anything but a 
McIlroy victory 24 hours on. As it is, his three-shot lead is nice, but hardly unsurmountable 
on a course so susceptible to low scores.

"It's the exact same thing as last year on the last day in the final round," McIlroy said, 
repeating what many were thinking of the 72nd hole shot that cost him a chance at the title 
a year ago. "It's just a bit of a hanging lie. It's not a great yardage. Fool me once, shame 
on you. Fool me twice, shame on me, I guess. I was in-between clubs, too. It was either trying 
to hit the high 3-wood or 'button' a 5-wood. It was just a bad decision at the end of the day. 
If I'm in that position again, and I don't quite need to take it on, I probably won't. But 
we'll see. Hopefully, I have a cushion coming down there tomorrow."

Still, that blip apart, this was, for 17 holes at least, one of those McIlroy performances that 
make observers wonder how anyone ever beats him. Between tee-and-green there was too a noticeable 
improvement in the Northern Irishman's shots. Over the opening two rounds, McIlroy's driving had 
betrayed a worrying and somewhat erratic fragility. On Day 1, the balls were tending to fly right 
of their target; two days later that miss had been reversed.

Perhaps the most revealing word in the four-time major champion's chat with the media following 
his second-round 70 was "timing." After more than a month away from competition—during which he 
did not touch a club for "a couple of weeks"—the search for his natural rhythm was this week in 
its early and experimental stages. Patience was therefore required, although he was quick to 
credit the work he did on the range on Saturday evening.

"This was a lot more positive than yesterday," he said. "Still don't quite feel in control of 
everything, but I'm playing really efficient golf. When I'm giving myself looks, I'm taking 
advantage of the good shots that I'm hitting. And I'm managing my game when I don't hit a great 
shot here and there. I did hit a couple of wild tee shots again, a couple of very poor iron shots, 
too. Overall, though, it was much better today. I need to go out and do the same tomorrow.
"@

    $timeMag = @{title = "Time Magazine"; article1 = $time1; article2 = $time2}
    $peopleMag = @{title = "People Magazine"; article1 = $people1; article2 = $people2}
    $motortrendMag = @{title = "Motortrend"; article1 = $motortrend1; article2 = $motortrend2}
    $fieldandstreamMag = @{title = "Field and Stream"; article1 = $field1; article2 = $field2}
    $golfMag = @{title = "Golf Digest"; article1 = $golf1; article2 = $golf2}
    $magazines = $timeMag, $peopleMag, $motortrendMag, $fieldandstreamMag, $golfMag
    
    foreach ($mag in $magazines) {
        if ($magazine -eq $mag.title) {
            $mag.article1
            Write-Host ""
            $choose = Read-Host "Read another article? Yes/No"
            if ($choose.ToLower().StartsWith("y")) {
                $mag.article2
                Write-Host ""
            }
            $choose = Read-Host "Read a different magazine? Yes/No"
            if ($choose.ToLower().StartsWith("y")) {
                Get-Magazine
            }        
        }
    }
}

function Use-Cellphone {
    $t = @" 

     /`$`$   /`$`$                 /`$`$`$`$`$`$ /`$`$                           /$`$
    | $`$$ | `$`$                /`$`$__  $|__/                          | $`$
    | $`$`$$| $`$ /$`$$`$$`$       | $`$  \__//$`$ /$`$$`$$`$ /$`$$`$$`$$  /$`$$`$$`$| $`$
    | $`$ $`$ $`$/$`$__  $`$      |  $`$$`$$`$| $`$/$`$__  $| $`$__  $`$|____  $| $`$
    | $`$  $`$$| $`$  \ $`$       \____  $| $| $`$  \ $| $`$  \ $`$ /$`$$`$$`$| $`$
    | $`$\  $`$| $`$  | $`$       /$`$  \ $| $| $`$  | $| $`$  | $`$/$`$__  $| $`$
    | $`$ \  $|  $`$`$`$`$$/      |  $`$$`$$`$| $|  $`$$`$$`$| $`$  | $|  $`$$`$$`$| $`$
    |__/  \__/\______/        \______/|__/\____  $|__/  |__/\_______|__/
                                          /$`$  \ $`$                     
                                         |  $`$$`$$`$/                     
                                          \______/                      
    
             
"@
    for ($i=0;$i -lt $t.length;$i++) {
    if ($i%2) {
     $c = "red"
    }
    elseif ($i%5) {
     $c = "yellow"
    }
    elseif ($i%7) {
     $c = "green"
    }
    else {
       $c = "white"
    }
    write-host $t[$i] -NoNewline -ForegroundColor $c
    }
}

function Start-Timer {
    #start a timer and while the timer is under the wait time
    #wait
    $global:waitTime = Generate-Waittime
    $stopwatch.Start()
}

function Generate-Win { #JEN
    cls
    $winbanner = @"
   ___                                          _                                                            
  / (_)                                        | |          o                   |                            
 |      __   _  _    __,  ,_    __, _|_        | |  __, _|_     __   _  _    ,  |                            
 |     /  \_/ |/ |  /  | /  |  /  |  |  |   |  |/  /  |  |  |  /  \_/ |/ |  / \_|                            
  \___/\__/   |  |_/\_/|/   |_/\_/|_/|_/ \_/|_/|__/\_/|_/|_/|_/\__/   |  |_/ \/ o                            
  ______ _            /|                             _                    _   _                              
 (_) |  | |           \|           o       o        | | o                | | | |                             
     |  | |     _             __,    _|_       ,    | |     _  _    __,  | | | |          __        _   ,_   
   _ |  |/ \   |/    |  |  |_/  |  |  |    |  / \_  |/  |  / |/ |  /  |  |/  |/  |   |   /  \_|  |_|/  /  |  
  (_/   |   |_/|__/   \/ \/  \_/|_/|_/|_/  |_/ \/   |__/|_/  |  |_/\_/|_/|__/|__/ \_/|/  \__/  \/  |__/   |_/
                                                    |\                              /|                       
                                                    |/                              \|                       
"@
    $winbanner
    Write-Output ""
    $minutes = $stopwatch.Elapsed.Minutes
    $seconds = $stopwatch.Elapsed.Seconds
    Write-Output "$global:player, you waited for $minutes minutes and $seconds seconds! Nice!"
}

function Check-In { 

    $receptionist = @"
         _,,,_
       .'     ''.
      /     ____ \
     |    .'_  _\/
     /    ) a  a|         .----.
    /    (    > |        /|     '--.
   (      ) ._  /        ||    ]|   '-.
   )    _/-.__.''\       ||    ]|    ::|
   (  .-''-.   \__ )     ||    ]|    ::|
   '/      '-./  '.      ||    ]|    ::|
_   |    \      \  \     \|    ]|   .-'
 / \|     \   \  \  \     L.__  .--'(
|   |\     '. /  /   \  ,---|_      \---------,
|   '\'.     '. /'\   \/ .--._|=-    |_      /|
|     \ '.     '._ './'\/ .-'          '.   / |
|     |   ''.     ';-:-;')|             |-./  |
|    /_      ''--./_  ' )/'-------------')/)  |
\   | '""""----"'\//'""'/,===..''''''''''/ (  |
|  |            / '---' '==='          /    ) |
/  \           /                      /    (  |
|    '------.  |'--------------------'|     ) |
\            '-|                      |     / |
  '--...,______|                      |   (   |
         | |   |                      |    ) ,|
         | |   |                      |   ( /||
         | |   |                      |   )/ '"
        /   \  |                      |  (/
      .' /I\ '.|                      |  /)
   .-'_.'/ \'. |                      | /
   '''  '"""' '| .-------------------.||
               '"'                   '"'
"@
    $global:player = Read-Host "Please enter your name"
    #JEN
    $time = Get-Date
    $appointmentTime = $time.AddMinutes($time.Minute % 15).toString("HH:mm")
    Write-Host $receptionist
    Write-Host "Hi there! Welcome to the best waiting room experience ever written in PowerShell! Thanks for checking in."
    Write-host "Okay $global:player, we've confirmed your appointment for $appointmentTime. Go ahead and pick out a seat and we'll be with you shortly!"
    Start-Timer
}

function main {
    Clear-Host
    $banner
    
    #Are you ready to enter logic here?
    $input = Read-Host "Are you mentally prepared to enter the office? Yes/No"
    while (-not $input.ToLower().StartsWith("y")) {
        main
    }
    
    Check-In
    Get-Seat
    $usePhone = Read-Host "Wanna get on your phone to kill time? Yes/No"
    if ($usePhone.ToLower().StartsWith("y")) {
        Use-Cellphone
    }

    #Read input for if you want to read a magazine or not
    #if yes call Get-Magazine
    $getMagazine = Read-Host "Well.. wanna read a magazine or something? Yes/No"
    if ($getMagazine.ToLower().StartsWith("y")) {
        Get-Magazine
    }
    
    Clear-Host
    Write-Output "Well, now we just wait..?"
    do {
        sleep 5
        Write-Output "..and wait"
    }
    until ($stopwatch.Elapsed.TotalSeconds -ge $global:waitTime)
    Generate-Win
}

main