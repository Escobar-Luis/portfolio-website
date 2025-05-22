
 have you ever looked at a sleek 3D portfolio and thought "I wish mine could 
look that good." Well today is your lucky day Hi there and welcome to a 
course in which you'll build a portfolio that could easily get featured on awards 
combining stunning 3D animations with a user-friendly layout that'll have recruiters and clients saying "Wo this 
guy really knows his stuff." with a minimal yet effective navigation bar A 
stunning hero section with a 3D room model particles animated text and a 
clear call to action and stylish cards showcasing your experience projects and clients After that you'll display your 
project in a clean bento grid layout featuring your best project Then there's 
a unique and animated timeline that visually showcases your career journey 
sleek cards to highlight the technologies you've mastered with interactive 3D icons a testimonial grid 
with this cool hover effect and finally a functional contact section featuring a 
form and a computer desk 3D model like you're waiting for an email and finishing it off with a simple footer at 
the end By the end of this course you'll have a portfolio that not only looks 
amazing but loads smoothly even on mobile showcasing your skills and experience in a way that's impossible to 
ignore And if you're worried this might be too advanced well don't worry because 
I'll walk you through everything step by step from integrating 3D models with 3JS 
and React 3 fiber to adding smooth animations with Gap and building a sleek 
modern design with Tailwind CSS So whether you're a beginner looking to level up your portfolio or an 
experienced developer aiming for the next big opportunity this video is for you And alongside this video I've also 
put together a handy cheat sheet for 3JS development You can grab it for free within the video kit in the description 
below and use it as a quick reference And if you're looking to deepen your understanding of 3JS and turn it into a 
career I recently put together a course focused entirely on vanilla 3JS from the 
basics to advanced interactive experiences You'll get handson with live 
code playgrounds built right into our new platform allowing you to experience with lighting animations and different 
3D properties in real time You'll instantly see the impact of every change 
truly learning how 3JS works under the hood If that sounds helpful the link is 
in the description But with that said are you ready to build a portfolio that's truly next level 
in this course I won't just show you how to build a portfolio I'll also teach you how to deploy it to the internet so 
everyone can see what you built Now a developer portfolio is not like any 
other project It is a career asset designed to showcase everything you're 
capable of making you an attractive candidate for any job And that's why 
I'll teach you how to go a step further See hosting your portfolio on a 
personalized domain makes you more professional memorable and improves your 
credibility and search engine visibility So before we dive into coding let's get 
that domain name I highly recommend Hostinger for hosting your modern portfolio And right now they're offering 
a great deal which you don't want to miss When it comes to hosting this modern portfolio I personally go for the 
premium plan And here's why it's perfect for this and many other projects You can 
host 100 websites with the same account You get a free domain name which gives you a professional touch You get a free 
SSL for HTTPS security which creates trust with anyone visiting your 
portfolio This deal won't last forever And because I've partnered with Hostinger you get an even bigger 
discount Once you click the link in the description click claim deal and add to cart Here we'll have to choose the 
period of our hosting With the crazy discount going on right now I'll definitely choose 48 months to save the 
most money and enter your JavaScript Mastery coupon code which will give you 
an even bigger discount on your hosting package And once you buy it we are ready to set everything up and get started 
with building out our portfolio Let's start with Hostinger's guided setup We are building a new website so we can 
choose create And we're building a completely custom website so we can choose skip at the bottom Next we need 
to choose our domain As you can see I use Hostinger for my jsmastery.pro platform So here you can type out your 
domain name I would recommend something like your firstname and lastname.com something like 
johndoey.com and if you purchase the hosting for more than one year you'll get the domain completely for free 
Choose it and click next The domain is registering Now already we are the next step where you can choose where your 
audience is located at and you can see there's a lot of options Click next and the setup will initialize While that is 
happening just another quick note and that is that the full codebase of the video you're about to build is live on 
GitHub So you can check it out right here And if you don't mind give it a star With that in mind we are redirected 
to the dashboard of our hosting project So finally let's code it out and we'll deploy it at the end of the course 
 
To get started developing our amazing 3D portfolio we'll start by spinning up our 
Vit and React project At this point I think Vit is the preferred way to start 
React applications So just head over to vit.dev click get started scroll down a 
bit and you'll be able to see a command that we have to run So let me show you how to do that right within your code 
editor Or maybe you're using an IDE like I am Throughout this course I'll be 
using WebStorm a super powerful IDE that is as of recently completely free for 
non-commercial use which means that you can just download it and start using all of its amazing features you can totally 
proceed with this course with any other code editor But later on once you see something cool happening right here 
inside of my IDE and it's not happening for you well that's most likely WebStorm So let's open up our integrated terminal 
and run mpm create vit latest and then the name of 
your project If you're not currently within any kind of a folder you might want to type 3D portfolio right here But 
as I'm currently within a 3D portfolio folder I'll just say dot slash to create the project in the current repository 
And I'll press enter It'll ask me a couple of questions such as do I want to install the create V installer to which 
I'll say why sure go ahead and then it's going to ask me a couple of questions The current directory is not empty Well 
in this case I'll say remove existing files and continue You can choose your 
package name I'll just say 3D portfolio And then you'll need to choose a framework or a flavor of your 
application You can totally proceed with any option from the list but throughout this course I'll go with React and I'll 
go for the JavaScript variant But of course if you want to do it in TypeScript you're totally free to do so 
That's it Simply run mpm install to install all the necessary dependencies to run a React application And once that 
is done run mpm rundev to spin up the project on localhost 5173 And then just 
click on it to open it up within your browser You should be able to see something that looks like this But now 
let's clean up our file and folder structure a bit so everything makes a bit more sense for the build of our 3D 
portfolio I'll start by diving into the source folder removing all the assets we 
have right now Removing the app CSS as well as app 
JSX We'll create all of these on our own And you'll want to clean up your index.css as we'll update it later on 
Now to actually show something on the screen we have to create a new 
app.jsx and within it run rafce to quickly create a new functional 
component that'll look something like this If rafce didn't work for you that 
might mean that you don't have the necessary extension or a plug-in installed So go to your editor settings 
either plugins or extensions and search for React snippets In this case I'm 
using modern React snippets but any should do the trick Once you do that we can remove this import as it's not 
necessary And we can wrap everything within a main tag Within it we can render a div And within this div we can 
render an H1 That'll say something like welcome to my 3D portfolio Perfect And 
if you go back to your application you should be able to see something that looks like Oh Oh wait That's too light 
of a screen We were looking at a dark screen for such a long time So sorry for flashing you with this light screen But 
it is what it is We'll switch it over to dark mode very soon For now the most important part is 
that you can actually see this empty canvas which throughout the period of this course together will turn into your 
3D portfolio But to do it we'll need some packages or dependencies that will help us work with 3D So open up your 
terminal one more time and actually open up another one This one we'll keep 
running our application and the second one we'll use for installing those additional 
dependencies So run mpm install And now we can list out all the packages and 
dependencies we'll be using Let's start with gap So what is gap well if you head over 
to gap.com you'll be able to see that it says animate anything A widely robust 
JavaScript animation library built for professionals It allows you to effortlessly animate anything that JS 
can touch delivering silky smooth performance and unmatched support Okay 
Um I think they're trying to be a bit flashy right here and show you everything that you can do with GSAP 
right here on this landing page And I gotta say it's looking great There's a 
showcase of many different projects that people have built over the years And who 
knows maybe your portfolio ends up right here So let's install it by installing 
Gap as well as Gap/React Now after installing our 
animations library which we'll use to animate specific parts of our portfolio you'll also want to install 3JS a 
library for creating WebGL powered 3D scenes inside of your browser If you are 
super new to 3JS I would recommend checking out our free YouTube crash course before proceeding with this 
course or even checking out our vanilla 3JS course on JSMy Pro If you check out 
the terminal you'll see we dive super deep into everything that 3JS offers 
Starting from things like cameras and orbiting different models all the way to transforming and moving your objects to 
adding meshes and geometries managing it all through a graphical user interface and of course lightning and so much more 
because we're continuously adding new content to this course But with that said let's add three as well as at 
React-3/Fiber Fiber is a React version of 3JS that simplifies the use of 3JS 
library within a React ecosystem And also on top of that there 
is a package called React 3/Dre It is a helper library that even 
further simplifies the most common 3D tasks like lighting loaders and more 
Finally for some scenes we'll also need some visual effects like bloom and so on 
So I'll say add 
react-3/postprocessing I'll explain how all of that works pretty soon For now let's just get them installed by 
pressing the enter key And with that our first step is done You have successfully created a React application with an 
empty page that right now looks something like this And you have installed all the necessary packages 
There aren't many They're going to help you develop your 3D portfolio Great 
 
work So what you say that we go from something that looks like this to something that looks a bit more like 
that Well to achieve that we need a way to apply styling to our application And 
for styling we'll use Tailwind CSS which allows you to rapidly build modern 
websites without ever leaving your HTML In other words it's a utility first CSS 
framework packed with utility classes for easy but fully customizable styling 
Something that material UI Bootstrap or other styling component libraries don't do very well which is customization Here 
you're writing Tailwind which is technically still just CSS but in a much faster way So let's go ahead and set it 
up Head over to docs installation using vit and just copy this first command 
right here and paste it into our second terminal mpm install tailwind CSS and 
add tailwind CSS/vit After that we'll have to go over to the second step which is to configure 
the Vit plugin by adding T and CSS V plugin to our V configuration So just 
copy this entire block of code navigate over to V config By the way I just 
pressed commandP which allowed me to quickly open up the file explorer and 
navigate to this file without ever having to search for it right here So that is command P and now you can simply 
paste what you just copied where now we're setting the T and CSS plugin and we also need to keep the previous plugin 
that we had which was react that looks something like this and we have to 
import this react from 
atvjs/plugin- react perfect now the third step is to add an import to our 
CSS file that imports tailenc CSS So copy this and paste it right at the top 
of our index.css file Add import tailwind CSS And here we can also define 
the base styles like the styles for our HTML and body elements and give it a 
width of something like 100 VW which stands for viewport width We can also 
give it a background color of black and we can also give it a color of white 
If you save this and go back you should be able to see something that looks like this Welcome to my 3D portfolio now with 
a dark background and light text Now in Tailwind CSS V4 and beyond we now have 
the native support for at theme directive which allows you to define some global styles for fonts or colors 
right within the index CSS without having to have a separate Tailwind.config.js file So here you can 
do something like theme-ash 
color-white-50 and you can define a specific value like hash D9 EC FFF This 
is a different variation of the white color And instead of specifying it every single time D9 EC FFF now you can just 
say color white 50 But where did this color come from in the first place why did I use this specific color well 
alongside watching this course I'll also give you access to the entire codebase 
of the course in case you want to just look at the code But more importantly I'll give you full and free access to 
the finalized Figma design So in case you want to check it out and try to attempt developing it on your own or you 
want to change some things up well you can do that by checking out the final Figma design The link to the video kit 
containing everything you need for this video such as the source code the Figma design and additional assets and 
snippets is right below this course So just click on it get to the video kit and then go to the Figma design From 
within the design if you inspect specific elements of text you'll see different colors such as this button for 
example that has this silver color or this one right here You can see D9 E CFF 
This is the exact color that I have added to my tailwind config So what you can do next is go through the entire 
Figma design and manually apply all of these colors such as for example dash 
color-b blue- which is hash 2D 
2D38 And then you can also add all of the other colors as well Alongside the theming functionalities you can also add 
the custom utility classes using Tailwind's layer feature So you can say 
add layer utilities and then you can define for example a flex- center class name Why 
flex center because so often we need to center something within a div right so 
instead of every time saying flex center center here you can just define that this flex center will apply 
a property of flex a justify center and items center So when you want to use it 
within the code it is super simple You just say flex center And there are many other ways in which we can use this new 
tailwind configuration to make your life much easier later on So just so you don't have to go over to our design and 
poke every single element 10 times until you get to its color I'll provide the final index.css file for you right at 
the bottom of this video kit So head over there and copy the index.css file Once you copy it override everything we 
wrote here and simply paste it You'll notice that here we add some additional 
elements that are going to help us style our application as well as some basic elements for defining different grids 
responsiveness and utility functions as well as most importantly theming And 
we're adding our own font as well from Google Fonts This doesn't contain any programming logic or 3JS code Rather 
it's just some utility classes that will make the styling of our application easier Whenever there's something we're 
using within our code I'll point your attention to it For example take a look at these components This layer of 
components is used to define custom styles scoped to real components This 
keeps things modular For example if you search for something like a navbar right here you can see that as soon as we 
apply class name of navbar it's going to apply these classes right here to make it look nice And you can also 
immediately style the logo within the nav or even how list items within it look like These styles act like reusable 
building blocks across the app Think of this as the design system layer where you store the visual identity of the 
buttons layouts grids and more Don't worry I'm going to explain how it all 
works very soon And the only thing you'll need other than the styles are going to be the assets Yep these little 
icons that you can see here here here even here I want to make sure that you 
have everything you need to continue developing this application without going back and forth with the design So 
I've took the time and put all of these icons in a single zipped folder Head over to the video kit and find it right 
here Once you download it head over to your current application and delete the current public 
folder Unzip the folder you just downloaded and drag and drop this new public folder right within your 
application This one will contain a lot of images logos and textures as well as 
different 3D models we'll use throughout our application With that said let's test whether our Tailwind CSS 
configuration works I'll pull my browser to the side so we can see it alongside our IDE and I'll open up the source 
app.jsx and I'll apply a class name of text-3 Excel If you do that and if your 
text gets larger or if you maybe apply an underline that means that Tailwind is 
properly connected to your application And with that we are ready to start working on the hero section So let's do 
that next The portfolio hero section The first 
 
thing that your users see and a major chance to make a first impression Here 
we'll start strong by immediately blending some UI elements scrollbased 
interactivity on the navbar and a realtime 3D canvas So let me start by 
breaking it down into two major parts First the JSX structure and the layout 
and then of course the GEP animations and interactivity First things first we have to organize our projects into 
sections and components So let me clean up this app.jsx and organize our project 
We can start by creating a components folder right within the source folder 
I'll call it components and I'll also create another which I'll call sections 
Next head over into sections and create a new file called 
hero.jsx and run rafce and then import it within your app.jsx That'll look 
something like this We have our app We can wrap it just in an empty react 
fragment for now and render a self-closing hero section just like this 
But make sure to import it from sections hero.jsx If you do that you should be able to see just the hero right here on 
the right But now we can start diving deeper into that hero section by creating our hero 
section layout First we'll start with some semantic HTML by turning this div 
into a section We can give the section an ID so we can later on scroll to it of 
hero and a class name of relative and overflow-hidden Inside of it we can 
create a div that'll have a class name of absolute 
top-0 left-0 and a zindex of 10 What is 
this for well for a little background element that I want to show near the top 
left of the screen So let me render a self-closing image tag with a source of 
for/ images/bg.png with an al tag of 
background If you save it you won't be able to see anything yet But soon enough the goal is to show these little dots 
right here floating on top left of the screen So right below this div let's set 
up our main layout by creating a div with a class name equal to hero- layout 
On the left side we will display our hero content meaning the text and on the 
right side we'll display the 3D model So start by creating a semantic header 
tag with a class name of flex flex- call 
justify- center on medium devices w- full so it takes full screen 
wcreen and on medium devices padding x of 20 and padding x of five usually this 
is to make sure that it looks good on mobile devices as well And now you can start seeing that background appear 
right here Within it we can display a div that'll have a class name equal to 
flex flex- call and a gap of seven And now we can focus on the main headline 
Yep this is the one that I'm talking about It'll actually be comprised of three different H1 elements So let's 
first start by creating a new div for it It'll have a class name of 
hero-ext And then here we can create our first H1 of shaping Below it we can say 
into real projects And below it we can say that deliver results But we're 
shaping what but what are we shaping well if you take a look at the final 
application you'll see that here we'll have animated text that says ideas code 
designs concepts and more So for now let's just use one of these For example 
designs And later on I'll show you how we can make it animated First we need to define some kind of an array that we 
want to loop over We might as well define it here by saying const words is 
equal to an array of different objects And each word has to have a text for 
example ideas And then we also have to give it an image path because each word 
will also have a little icon that you can see alongside that word So let's 
give it an image path of forward slash 
images/id.svg And you can do the same thing with the second one which is going to be 
concepts And here you can see concepts.svg that SVG Perfect So now I'm 
going to zoom this out so it seems more like a real application And I want to figure out how we can animate it Well 
first of all let's map over those words right here So after the word shaping 
instead of designs I'll open up a new span element It'll look like this A span with 
a class name equal to slide within it another span with a class name 
equal to wrapper and within it we want to map over our words by saying words.m map 
where we get each individual word and for each word we want to automatically return a span Now what do I mean when I 
say automatically return i mean not open up a curly brace here rather just open 
up a parenthesy because that means an immediate return This span since we're mapping over it 
has to have a key of something like word.ext because each text is unique and 
a class name of flex items center on medium devices a gap of three typically 
a gap of one and a padding bottom of two just to create some spacing Finally 
within that span we can render an image for the icon It'll have a source of word 
img path It'll have an al tag of word.ext and it'll have a class name of 
on extra-large devices size of 12 On medium devices size of 10 and typically 
a size of seven So it looks good on all different screen sizes On medium devices 
we can also give it some padding of two typically a padding of one rounded dash 
full so it sits within a circle with a bg of 50 So if I save this you can now 
see two different icons that are animating up and down And of course 
alongside the icon right below it I want to display another span element that'll 
simply render the word.ext So now it says ideas and it 
animates over to concepts But keeping this list of different words right here 
on top is not that ideal because what if we want to have not just two different 
words but rather five six or 10 It doesn't make sense to clutter the view 
of the hero with some data points And as a matter of fact if you wanted somebody to very easily be able to update this 
doesn't make sense to keep it here It's better to extract all static data into a 
standalone file typically called constants which contains nothing more than just some data that we want to use 
across our application So let's copy these words and instead of keeping them 
here let's create a new file within the source folder or rather a new folder 
called constants and within constants create a new file called index.js 
JS within it Paste those words and make sure to export them by saying export 
const words words And now when using those words you can import them over 
from the constants Everything still works as it did but now we have just a single import at the top And now if you 
wanted to provide more words right here you can do that easily As a matter of fact we can add or shape concepts 
designs code ideas and I went ahead and duplicated it right here just so we have 
more things to scroll over in a more dynamic way And then when it reaches the end it'll very nicely scroll all the way 
to the first one There we go Super nice right so throughout this application 
there's going to be more cases where we want to have some static code like arrays of different data that we want to 
use And you can find those at the bottom of the video kit as well Just copy the constants index.js file and just paste 
it here You'll notice that we have different words but then also you can change your abilities For example what 
are your strengths and descriptions of those strengths which different images do we want to import maybe you can also 
change different navigation links It is all right here So now that we have that I want to take a second to explain how 
this animation works See this span has a class name of slide and then a span 
inside of it has a class name of wrapper These classes are defined within the 
index.css file So if you commandclick them I think this should lead you directly to where they're mentioned or 
you can just find them within the index.css CSS and here you can see that we're defining the display of the entire 
block as inline block We set the direction of column and then we start a 
transition The key part right here is this key frames word slider where we're 
translating the Y position of the different words right here such as designs code and so on First by a little 
then more and then more and then we finally fully transform it and then we animated over a specific number of 
seconds infinitely This subtle yet powerful micro interaction brings life 
to your main headline and immediately communicates what you do both visually 
and interactively And then below this slide with the wrapper H1 we can also 
add a P tag that can say something like "Hi I'm Adrian a developer based in 
Croatia with a passion for code." Of course you can type something different 
Make sure to give this P tag a class name of text-w50 
on medium devices text- XL relative a Z of 10 and pointer events 
none to make it non-clickable And of course this was supposed to be outside of the H1 not just the first one but all 
of them So I'll post it right below this div that says hero text There we go Much 
better Finally below this we want to create some kind of a call to action where people can click on a button and 
then that button leads us to our work This button will be reused many times throughout our application So it makes 
most sense to create a reusable button component So back in our application 
let's head over into the components folder and create our first component called button.jsx 
This button will be used across multiple sections both in the hero and contact section So let's make it fully reusable 
and dynamic I'll run rafce to quickly spin up our functional component And 
then within it we can make this button an anchor tag This anchor tag will have a class name which will be equal to 
CTA-wrapper CTA stands for call to action which means an action that you want your user to take Before I continue 
developing this button let's actually use it within our hero section So right below this B tag I will render our 
button Make sure to import it at the top And then within this anchor tag I can create a div with a class name equal to 
CTA group and group And within it we can render another div This time a 
self-closing one with a class name of BG- circle Next below it we can render a 
P tag with a class name of text And we can simply render something that should 
say like see my work And there we go See my work is right here Below it let's 
also render a div with a class name equal to arrow-wrapper 
And let's render an image with a source of forward slash images slash 
arrow-down SVG with an al tag of arrow We cannot see it yet and that's because 
we have to style it a bit better So from the hero section let's pass some props 
that allow us to style it I'll pass over a class name equal to on medium devices 
W of 80 on median devices H of 16 
typically W60 and H of 12 And why do we have to provide the class name as a prop 
and not immediately right here well that's because this button is going to be used in different scenarios And 
depending on where it's being used we want to provide some different class names We can also give it an ID of a 
button And we can provide a text such as see my work because in the contact 
section it's going to say something else So now we can head over into that button and dstructure those props that we're 
passing into it such as the text the class name and the 
ID Next we can make this first class name dynamic I'll delete it and make it 
dynamic by opening up a new dynamic block of code and a template string I'll 
say if a class name exists So class name and then question mark question mark else render an empty string What does 
this mean if a class name exists render it If it doesn't render an empty string 
and then always render a CTA wrapper Finally here instead of see my work we 
can render the text And in this case the class name here should have been CTA 
button instead of a CTA group which will activate those classes If you head over to that you'll see that it'll apply some 
padding both horizontal and vertical It'll round the corners a bit apply a 
dark background But hey if it's dark why is it white right now well that's because we also have a transition So as 
you hover over it you can see that the background turns dark and only the arrow jumps up and down That happens because 
of these inner classes such as BG circle and the arrow wrapper So with that in mind our button is fully styled and 
later on once we implement a couple more sections we'll actually make it scroll to the sections just below Now we can 
get back to the hero section and see what we have Right now we have been working on the header component which is 
actually just the left part of the hero content section Or if you're looking at it on a mobile device that is this top 
part But now is the time to fill in this huge gap on the right side And we can do 
that by introducing this great 3D room model So let's do that in the next 
 
lesson to start adding our great 3D model right below or to the right side 
of the text We can head back over into the hero section and we'll implement it 
right here below the header where it says right side 3D model I wouldn't even 
call this a model It's actually an entire 3D experience So let's go ahead and create 
this component Right within source components create a new folder and call 
it hero models Within hero models create a new file and call it hero 
experience.jsx Just run rafce for now Later on we'll implement the entire 
experience here But for now import it right here where it says 3D model by 
putting it in a figure Figure is an HTML 5 semantic tag that says that something 
important will be right here and it is self-contained meaning it is a single unit that we want to display within it 
We can render a div that'll have a class name equal to hero-3d 
layout This will give it 70% of the width of the screen on large devices or 
full width on smaller devices So if I head back right here and give this a border red of 200 and 
border-2 you should be able to see that it takes full width of the screen But if we expand it it's taking about 70% of 
the screen right here which is still a lot to show this model So right within it let's render this self-closing hero 
experience This component is absolutely positioned So you can see it jumps a bit over here but as we implement it it's 
going to jump right below So let's head over into it And here we have to render our GB model So what is a GB model well 
a GB is a file format that allows us to render 3D scenes and models You can find 
many of these models on websites like SketchFab Some of these are free and some of them are paid and you can easily 
download them and put them right within your application But let's take it slow First things first I want to set up a 
canvas because in 3JS everything begins with a canvas So instead of a div let me 
render a canvas which I have to import from React 3 fiber And we have to have a 
camera within that canvas So I'll say camera is equal to and then we can set 
the position of the camera to an array of something like zero on the x-axis 
zero on the y-axis and about 15 on the z-axis which is pulled back a bit 
allowing us to frame the model nicely We can also give it something known as an FOV or field of view of 45 allowing us 
to once again nicely frame it within our camera And of course we cannot yet see anything if we don't have a light So let 
me add an ambient light which is a self-closing component with an intensity of something 
like 0.2 And we can also add a color to this light such as hash 1 a1 a40 If you 
save this you won't be able to see anything just yet Why well because 
there's nothing to see There's just light So to see something within the 
canvas you need to add a 3D object such as a mesh with a geometry and a material 
Well here's an example of adding a simple box You can create a new mesh and 
then within it you can render a box geometry with args an array of 11 one 
which is how wide and how big it is And then you can also give this mesh some 
kind of material such as mesh standard material and make it a color of 
something like blue If you do this and save you still 
won't be able to see it And that's because we have to appropriately light our subject Ambient light in this case 
is not enough So let me add a directional light with a position of 
something like five five and an intensity of one If you do that you 
should be able to see a blue or let's make it teal box Pretty cool right but right now it's 
just a 2D box So how can we actually move it around to see it in all of its 
three dimensions well we can add something known as orbit controls allowing us to move around this 3D model 
I'll add it right here above the mesh by calling it orbit controls coming from 
React 3D It is a self-closing component And if you just call it like this you'll 
already be able to move this box in all different dimensions And you can even zoom it in As you can see currently only 
some sides are lit up while the others are not You can play with the intensity of the light to see how that changes the 
model And of course this is something we dive much deeper into within our vanilla 3JS course So I just had to show this to 
you Uh we go super deep into different types of lights that there are And then 
check this out You can see exactly what each 3JS property is doing right here 
within the lesson I mean just how cool is that you can play with the intensity 
of different point lights change the positions of the lights and even change 
the rotations We have a second point light You can see how it gets reflected on different elements Pretty cool stuff 
right and right now we are dealing with a directional light We dive a bit deeper into the power property And check this 
out At the end you can also practice your knowledge using a quiz Pretty cool right and if something's not clear you 
can ask questions right here within the comment system and I'll reply very soon But with that said let's actually make 
something out of this cube Or rather should I say we need to import our real 3D model here But before let's first 
play a bit with the orbit controls I will set the enable 
pan to be set to false which is going to prevent panning the scene so you can 
only zoom in and zoom out as well as move around Also I want to enable the zoom only if we're on desktop devices 
But if we're on tablet then I want to disable it because it's going to prevent the users to be able to scroll 
throughout the website So I'll create a dummy variable called is tablet and I'll 
make it equal to false for now So here we can say if not is tablet then enable 
zoom else disable it Of course very soon we'll have to make this work for real 
but for now we're good After that we can define the max distance that we can zoom 
out I'll set it to 20 As well as min distance and I'll set that to about five 
We can also set the min polar angle to math.pi over 5 and a max polar angle to 
math.pi over two This allows us to control where in the screen we can move 
For example we can move up to this point up We cannot have a full view down and a 
full view up in the room We can only look at it from this angle And that's exactly what these polar angles are 
doing While we're here let's also implement this is tablet functionality for real And for that we'll use a 
library called React Responsive So I'll simply run mpmi 
react-responsive to install it And this will allow us to ensure that on larger devices users can rotate and zoom while 
mobile and tablet users will get a bit of a simpler experience Using this library is super simple You just have to 
say is tablet is equal to use media query and then you pass a query you want 
to validate for such as max width of 768 pixels like this And then for the 
other one we can maybe define is mobile Is mobile will be max width about yeah I 
think 768 and actually tablet is 124 like this So now we have this real is 
tablet variable But now is the time that instead of this fake cube which you can see now we cannot zoom on mobile devices 
which allows us to then move up and down normally as we would on any other website But if I zoom in on desktop that 
still works So now the main goal is that instead of this cube we actually render 
this full 3D model While I was creating the design for this amazing 3D portfolio 
I was thinking for a long time which model should we use I went through many 
different iterations but ultimately ended up on this one It is a developer-like room It has a lamp a PC a 
robot vacuum a chair and two screens Pretty nice It's also not super 
realistic It has a nice artistic look A bit of gloom from these monitors shining 
away And it just feels like a developer's room right which you want to 
put on your portfolio But of course you're completely free to search any 3D model you want Sketch Fab is one of the 
better websites So for example you can search for a laptop or a MacBook model 
There we go And there are many cool ones that you can use and display in the hero of your application But as I said I 
really like this one and I think you will too So let me show you what the process is of using some of these models 
in your apps You could totally go ahead and download it right here After you log 
in it'll just give you a GB file and then you would be able to import it within your application But here's the 
thing some of these models are super large For example the GB file is 1 
megabyte large And even though that is not so big it has 33,000 triangles which 
makes it take some time to load And that is without the lights that we need to display on it So what I did is I didn't 
want to use this model directly Rather I asked my friend that knows a bit of Blender for 3D modeling to clean up 
unnecessary meshes hitting geometries and parts that we just didn't need on the screen This allowed us to reduce the 
number of triangles while still preserving the original detail And they also grouped some parts together so it's 
easier for us to name them and manage them within the code and she's actually teaching me those Blender optimization 
techniques so I can cover them within the Elite 3JS course which will release 
soon on the platform But for now just so you don't have to go through that process yourself I decided to give you 
already optimized models right here within the public folder So remember putting this here before if you go into 
models you'll see an optimized room.gb This is the model you want to 
use Now to be able to use any kind of a GB model you need to first convert it to 
JSX by using the gltf JSX package It is a very simple package that turns gltf 
files into JSX components It is super simple to use Let me show you I'll open 
up my terminal and actually open up a new one Within this one I will cd into 
/public slmodels So now I'm in the same folder where we have all of these models 
we'll end up using The only thing you have to do is run mpxg 
gltfjsx optimized room.gb and press 
enter It's asking you whether you want to install that package So say yes or 
just y And this will create a clean optimized room.jsx JSX file for you 
containing the scene hierarchy that we can directly import and render within our React 3 fiber project Here it is 
optimized room.jsx So simply move this file over 
to source components hero models and put it here right next to the hero 
experience Then head over into the optimized room and rename the file to 
something like room You can also change it right here at the top Export function 
room And this was autogenerated by gltf to JSX Pretty cool right so what is this 
well this is a JSX representation of this 3D model It has different meshes 
and geometries that we can use and all of that together will form that room 
Just make sure to point it to the right file Currently it's pointing to optimized room GB but you'll have to 
point it to forward slashmodels/optimized roomg And you'll 
have to prepend that word models right here as well because if you check out 
our file and folder structure you'll see it's within public models and then optimize room Great Now let's import 
this model into our hero experience I'll head over to that component and instead 
of just rendering a mesh a box geometry we can render this room So I'll render a 
self-closing room component coming from components room And if I save it check 
this out Even on mobile you cannot really zoom in and out And right now 
it's not positioned in the best way possible but you already get the idea 
for what this is In my case it is a heavily lit room like there is a sun 
shining right here from the middle of the room The more directional light 
intensity you add the brighter it'll be and the less you'll see the colors But 
if you reduce it for example already it'll start looking so 
much better Now what do you say that we more properly position this model on our 
screen so instead of just rendering the room itself I'll render it inside of a 
group which then allows us to adjust different things such as the scale of 
the room So I can say that if we are on mobile devices then the scale will be 
0.7 times the original size else it'll be the full size So now the model will 
be a bit easier to handle on mobile devices We can also change the 
position where we can make it 0 on the x-axis minus 3.5 on yaxis and zero on 
the z-axis to move it down a bit There we go This makes more sense And we can 
also change the rotation a tiny bit by making it equal to zero minus 
math.pi over 4 and then zero on the z-axis This will rotate it slightly So 
once you first open it up it should look something like this Nicely positioned within your mobile screen Currently our 
lights are totally off but don't worry we're going to fix it soon Before that check it out on desktop Looking great 
Well soon enough it'll look great Lights truly do make a big difference when 
working with 3D models So let there be light Instead of simply adding lights 
one by one like this we can actually create a new component within the hero 
models And I'll call it hero lights.jsx Run rafce and then simply add 
the lights right within this empty react fragment For now I will simply use the 
same two lights that we had here So if I copy them and remove them from here save 
Oh just the screens will light This is pretty cool because they emit their own light Uh but I'll put those right here 
ambient directional And now I will import the hero lights right above this 
group And you can see we have light again So now we can head into the hero 
lights and start implementing all the different lights that we want to have in our application You might think that 
there are not many lights right here but the more you think about it the more lights you'll see I'll increase the 
width of my browser a bit so we can see it a bit better Let's start by removing those two lights and add a spot light 
just like this Make sure to spell the L in spotlight uppercased And let's give it a position 
This one will be the front right spotlight which is going to mimic a strong key light like the desk lamp that 
we have right here So I'll position it on two 56 And you might want to play 
with this a bit just to make sure to get it right And let's of course give it some kind of intensity I'll make it very strong like 
100 And now you can see that it's coming from the top right But if you play with these values a bit like 2 to2 you'll see 
how strong it is right now Or we can make it come from the center of the screen 0 
0 You can't see anything then But then if you change it to 1 
one you can see how well it is lighting everything As you move the numbers a bit 
like 135 or maybe 145 or maybe you make it this two you can see how this light 
behaves For now I'll set it to 256 There we go This is already looking 
so much better We can also angle the spotlight a bit to maybe something like 
0.15 And check this out Get what I was saying we are really talking about a 
desk lamp light right here Yep You can go to that level of detail where only a 
small part of the model is visible There's also this interesting property called penubra which basically means the 
softness around the edges of that light And you can change the color of the light to something like 
white There we go Now let's add an overhead lamp I'll copy this initial 
light Change the position to four 54 Change the angle to 
0.3 The intensity to about 40 We don't need it to be that strong Penubra to 
about 0.5 And we can give it a bit of a cool blue tone Let's say that we have 
some colored LEDs Something like 4 CC 0F0 And now we're lighting this larger 
part of the screen as well Let's add another one And I mean you can play with this as much as you'd like We could have 
been totally happy with what I had initially with just one directional light but I want to really create the 
mood if you know what I mean Next one we'll have minus three five and five There we go So now 
you can notice how these lights start overlapping With an angle of 0.4 four We 
can give it a super soft edge of just one intensity to about 
60 and a color of like 9D4 ed which is going to give it a bit 
of a different tone And now I want to add another type of light This one will be defined as primitive 
because within primitive you can provide any kind of an object here which will be a new three dot wreck area light So this 
is a special type of light that provides a soft and moody fill light You can also 
provide it a color like A259 FF I found that one to work pretty 
well Oh and here I forgot to pass a hash So the color wasn't actually getting 
applied So if I comment out this primitive light just so you can see what was happening This is looking so much 
more interesting than before Right so now we have this super white light We have this bluish spotlight right here 
And then we also have this purplish spotlight at the right side And now we're adding this additional wrecked 
area light To be able to use it you have to first import at the top So I'll say 
import asterisk as three from three And 
this allows you to use different elements from the library Of course this lights up everything a bit too much but 
you get what I'm going for right we can change its position to about 0 1 0 And we need to 
change this intensity to 15 And the rotation is the 
most important part We want to angle it down toward the scene So I'll change the 
rotation to minus math.pi over 4 
Math.pi over 4 and then zero for the Z-axis It's also important what else you 
pass into this rect area light See the second property it takes in is the intensity and then the width and the 
height So alongside the color I'm going to provide eight as the intensity to 
this wrecked area light three as the width and two as the height So that's going to angle it a bit 
more toward the room Finally I want to add a point light which is going to be 
very subtle and scattered for color balance So I'll simply give it a 
position of 0 1 0 So it's going to be on 
the center side but a bit lower with an intensity of 10 and a color of hash 
720 9b7 I found that color to work very well 
And I'll add another point light right below it by duplicating this one This one will come from behind or off to the 
right So that's going to be 1 2 and minus two with an intensity of 10 and a 
deep blue color like 0D 00 A4 So now the lighting in this room looks pretty crazy 
doesn't it i think one thing we can do to tone it down a bit is properly position this rectangular light by 
changing the position to come from the front right side So on X-axis one a bit from the top so 
Y-axis three and then four from the Z-axis You can see this now fills the 
room a bit nicer And maybe the most important thing that I missed is the 
softness around the edges of the light Even though I thought I applied it you 
can see that these lights seem to be fighting with each other one overlapping with the other And while it's pretty 
cool to see that you can test color theory by applying different colored lights over the same surface area we 
don't want it in our application So when I said penumbra here I was actually 
missing an M So if you add it here you'll notice how this light will get much softer and it won't compete with 
the rest of the lights Same thing for all the other two spotlights Yeah I think the glow of the lamp shows it the 
best because it has such a high intensity Check this out If I change the value of that property to nothing so it 
doesn't exist it'll have a very sharp light But if I change the value it'll 
soften it and more and more and more until it becomes barely noticeable but 
it is still there In this case lamps really do emit some light so I want to leave it right here Pretty cool stuff 
right but now everything still seems a bit too purplish or bluish doesn't it it 
doesn't seem like a real room Doesn't have that same artistic style that the original model had So let's go outside 
of the lights for a bit and let's go back to the room model to see whether we can fix some of these meshes materials 
and geometries I want to replace some of these default materials with the ones 
we're going to custom define that better react to light That way we'll have more 
control For example a fong material that's 
fng is great for soft shading with subtle highlights whereas the standard 
material is great for realistic lighting and reflections So depending on what we 
want to achieve we can apply a different material to different meshes The way it works is like this You can first import 
something known as use texture by saying const matcap texture is equal to use 
texture coming from react 3J And here you can define where that texture is 
coming from In this case we can go to forward slash images 
slashextures slmmath1.png And if you try to take a 
look at this math 1 image you should be able to find it under images textures 
math 1 And it should look something like this We'll use it for some meshes right here And you'll soon see how that'll 
look like So just to show you a simple example I'll say const curtain material 
and make it equal to a new 3 mesh fong 
material And to it you can pass a color of hash 
D90429 as an example And don't forget to import everything as three from three to 
be able to use these materials Now we can put that curtain material to use For 
example in this first mesh geometry where it says materials blend one you 
can use the curtain material and see what difference does it make Currently 
we haven't applied it properly which is actually good because you can see how this mesh looks like without any 
material Super plain right but as soon as I properly fix this color right here 
by removing this space you can see that we have a completely different story We 
get a much more vibrant color that reacts to light a bit differently So 
this right here is the material that we had before blind one Okay pretty cool 
but a bit plain And then this is our new curtain material which is nothing 
special It is just a basic built-in 3GS mesh fong material with a bright vibrant 
color And I know this might seem like a lot because we're diving into adding so 
many different sorts of lights to make this room super unique because let's be 
honest light is what allows you to see the room in the first place So we tackled spotlights primitives with the 
wrecked area lights point lights and more And now we're even changing the original materials of some meshes right 
here The one that's going to make the biggest difference for sure has to be 
this texture that we're importing from a PNG Yep you can import a texture from a 
PNG image Let me show you how I'll say const body material and make it equal to 
a new 3 mesh fong material to which I 
will pass a map So instead of a color you can pass a map and I'll pass it as 
the matte cap texture that I defined above from image And now we can apply 
this body material right here to this second mesh Instead of materials blend 
I'll apply a body material and see if you can notice the difference It's the walls See how the walls react 
differently to lights depending on which materials we give it This is cool sure 
but this definitely makes it look a bit different if that's what you're going for Now just so you don't have to go 
ahead and update every single material with its own color it is like being a bit of an artist right changing the 
colors I'll provide you with the final room.jsx file right within the video kit 
So head over here at the bottom of the file and copy it room.jsx If you paste it you'll notice 
that we're leaving some materials as blind Some like the table we're changing 
and then some more like the radiator pillow material maybe even something like the chair or the computer That's 
what we need to change So if I save this now and reload we get something that 
looks a bit more like this It's much closer to the final effect that we were going for I just feel that this works 
with the original theme of the portfolio that we're going for Oh and notice one cool thing and that is that these 
monitors now have this some kind of a glow And that in the world of 3JS is 
called a selective bloom So I can change the intensity of that bloom and you'll 
notice how much stronger it'll be It like the light bleeds out So I found the 
value of 1.5 to work the best So it seems like they're shining too bright to 
be able to see what's on them Now if you reload the page on your desktop device you'll see the full 3D experience We 
have a what appears to be a super moody room where a lot of vibe coding happens 
But once again I invite you to play with the lights a bit Every change that you make makes a big difference to the final 
model And in the final app I even added some particles But to be honest I think 
that's a bit too much because snow or particles don't really fall within a 
room right uh but if you do want to add them I'll leave it right at the bottom of the video kit The only thing you have 
to do is create a new component within the hero models 
Call it particles.jsx Paste that code right here 
And then get back over to your hero experience And then right below the lights you can render the 
particles and pass the count of how many particles you'd like I'll set it to 
about 100 and see the magic happen If you want to really freeze your 
computer set it to a thousand and see what happens There we go That's a sky 
full of stars if I've ever seen one Pretty cool right again either don't include it at all as it might be a bit 
of an overkill or leave it to about 100 max So with that in mind great job on 
completing the hero section It has been the toughest part of this portfolio 
Trust me on that But at least you learn a lot about 
 
lights Now there is one more thing regarding this hero that you might have not noticed we're missing right now As 
opposed to how it is in the final application It is the loading animation of this text Even though this part is 
always animating once we reload we also want to animate each one of these lines 
line by line to look something like this Check this out The first one will drop from the top first then the second and 
then the third Check this out As I reload the page they all drop one by one 
from the bottom to the top So let me show you how to implement that animation This time we won't be using 3JS Rather 
we'll be using Gap So head over into your hero component and let's 
import use GSAP coming from gap react as 
well as import gap which is the general library from gap just like this Then 
inside of the component we can call the use gap hook to animate this h1 tags We 
can do it by saying use gap to it You have to pass a callback function that we want to activate And there you can use 
the gap library to say go from and then go to And to this you can pass two 
different objects to define what's happening with these elements First you have to target which elements you want 
to animate In this case I'll animate the hero text class name So make sure to 
start with a dot And specifically I want to animate all H1 elements within the 
hero text class name Then we're going to provide a from position So I want to 
animate it from these properties to the following properties Let's say that I 
want the elements to start from a bit of a higher position on the Yaxis For example Y is 50 and opacity of zero So 
we can bring them to life later on from zero opacity to the full opacity Then we want to animate them to 
Y0 So we want to bring them down We want to change the opacity to one We want to 
stagger each one of these H1 elements by 0.2 seconds So we get first one 2 3 And 
I want to set the duration of the animation to 1 second And the easing to 
power two dot inout This is just how this specific animation will play out So 
now if I save this and if I increase the duration to something like 5 seconds so you can see it better and reload you 
should be able to see how all of these three are coming one after another To make the effect even more pronounced I 
can change the stagger to about 1.5 seconds Reload And check this out First 
we have the first one Then we have the second one And then we have the third one Of course you never want to keep 
your users waiting So what you can do is bring the stagger to 0.2 and the duration to 1 second That'll end up with 
a nice animation that looks like this Of course the text is even larger on full screen so the animation looks even 
better there Looking good right gap is not that hard So let me explain what 
happens here The Y position moves each headline from 50 to zero to give it some 
movement And then the opacity from 0 to 1 fades the element in And then a 
stagger gives us that cascading animation Pretty cool right now another 
thing that we need to do with our hero section is to make this button scroll a bit down We cannot see the scroll just 
yet because we haven't implemented any additional sections but once we do implement it we want it to scroll very 
smoothly to a very precise position This is what we want to achieve 
I click it and we go right here to the top of these statistics and then we can 
see the portfolio So to implement that head over into the hero section and then 
from the hero head over to the button that we created that is right here within the header There we go Now to 
this button we have the anchor tag which is the main clickable element So let's give it an on click function where we 
can access the click event within here The first thing we want to do is prevent 
the default behavior of the browser and that is to reload the screen once we click on an element Then we want to get 
access to a target that we want to scroll to And you can use the 
document.getelement by ID And whatever ID you define we can scroll to it In 
this case I'll call it counter because right here within these elements we want to count up some of these statistics So 
I'll call it counter Then we only want to scroll if we found that element and 
if we have an ID In this case we're only passing the ID from the hero section and 
we won't pass it later on once we use it in the contact section So the contact should send the email and not scroll up 
Only this one should scroll up Next we have to give it a bit of an offset which means kind of figure out to leave some 
space at the top So I'll say const offset is equal to window.in inner height and I found the number 0.15 to 
work pretty cool I'll show you later on how it works with and without this Finally we want to calculate how far 
down we need to scroll So we'll say top is equal to target dot get bounding 
clientrect dot top plus the windows scroll 
y minus the offset because we want to leave some space on top of these 
elements to make them appear nicely on the screen And finally you can say window.croll to define the top that you 
want to scroll to and set the scroll behavior to smooth So very soon as we 
implement those counters right here below we'll be able to click and scroll 
down So let's implement it I'll head back over to my hero section 
And below this figure and below the div that's wrapping it still within the 
section I'll render an animated counter But let's first create that component within the components folder and call it 
animated counter.jsx Run rafce right within it 
And then import it right here where we were Animated counter a self-closing 
component And if you do that you should be able to see it right here at the bottom I'll collapse my browser Head into the 
animated counter and we can implement it We can start with the JSX I'll first 
wrap everything in a div that has an id of counter because we're going to use 
this element to scroll to later on Next I want to give it a class name equal to 
padding-x-lg to give them some space on left and right I also want to give it on extra-large devices a margin top of zero 
but typically a margin top of 32 Within this div we can have yet another div 
that'll have a class name equal to margin x of auto grid of four columns So 
we're going to show four different cards within it We can map over our counter items So just start typing counter items 
and press enter It will automatically import them from your constants Here I 
put different values For example years of experience satisfied clients 
completed projects and client retention rate You can of course change this if you maybe have 10 years of experience or 
less You most likely have much less but that's totally okay Satisfied clients 
you can change all of these numbers or values as well as the labels that you want to display right here It's all 
dynamic So let's map over those counter items by saying that map where you get each item 
and for each item you want to automatically return a 
div that'll look a bit like this It'll have a key equal to counter items label 
And you want to give it a class name equal to counter dash number 
text-white text-5 XL font-bold and margin bottom of two Next 
you can give it a zero number So we're going to start all of them with a zero And then you can render the 
item suffix What is this suffix well it is either a plus for a number or a 
percentage for the retention rate And then if you save this you should already be able to see four different numbers 
right here But let's actually wrap this in another div So I'll make it a div 
like this And I'll put it right within it We want to wrap it in a card first So 
this outer div will have a class name of bg zinc of 
900 rounded-lg padding of 10 flex flex- call 
and a justify center So now we can see four of these different cards just showcasing empty values But before the 
value we can actually render another div that will render the item label So we 
have zero years of experience zero satisfied clients and zero completed projects Not so good Let's give this div 
a class name of text-w Okay that's a bit better But 
still why are we saying zero right here well that's because we always want to 
start with a zero but then we want to count the elements up to the value that 
we have chosen either 10 100 or more Sure what you could do is immediately 
display it right here So that's going to be just item value And that's pretty cool already right but I want to show 
you how you can animate this element to go up in number to reach those specific 
values So let's do that Next to implement our counter we can use a react 
countupub mpm package You can simply install it by saying mpm install react 
countub and then we can use it by importing the countupub right at the top 
and then using it like a countup component that'll look something like this Within this div we can implement a 
count up and give it a start and an end If you don't provide a start it'll start 
from zero And then right here as the end we can implement the item dot value And 
you can also add a prefix or a suffix to it So the suffix can be 
item.suffix Let's see how that looks like I'll delete this Save it And if I 
go back and reload you can now see that all of these numbers count up Even 
though this is 10 and this is 100 the component automatically takes enough time to load them all the same 
Perfect This is looking amazing And let's check it out on desktop Yep this 
is looking good We have our hero section which takes full height of the screen 
Very soon we can also add a navbar right here But for now we have this hero and 
then if you click on see my work it actually scrolls down to these countup cards So this is looking great And on 
mobile the reason why we had to put so much work into the see my work button is because sometimes you cannot scroll on 
mobile devices as instead you'll be actually drag and dropping our 3D model So it was super important for this see 
my work to properly scroll down to the countup section So with that in mind we 
have now implemented the hero section with this amazing 3D model and GEP animations we have added to these H1s as 
well as implemented a counter for some of the most important metrics about our years of experience satisfied clients 
projects and more In the next lesson let's focus on developing this showcase 
section where you can display your highlighted project alongside two other projects you've done 
 
before With the hero section done let's focus on the section below the showcase 
section where we show three real world apps you've built one large featured app 
on the left and two supporting projects on the right First things first we have to create a new section So within the 
sections folder create a new file and call it showcase 
section.jsx run rafce and imported right within the app 
below the hero showcase section right here If you do that you'll be able to 
see a showcase section text right below So let's get started with the layout First I'll wrap everything with a div 
and I'll give it an ID equal to work so that we can use the navigation bar links later on to scroll to that section Then 
I'll give it a class name of app dashcase And this will nicely center it 
on the screen Right within it I'll create another div And this one will have a class name equal to w- full So it 
takes the full width of the screen And then within it I'll have another div 
with a class name equal to showcase layout This one we'll make it flex row 
on extra-l large devices So we can fit one on the left and two on the right And flex call so all of them show one below 
another on mobile devices So now we can split this into two sides We're going to 
have the left side right here on the top and then after that we'll have the right side So on the left side let's create a 
new div This div will have a class name equal to first project wrapper And 
within it I'll create another div with a class name of image-wrapper And within it I'll render 
a self-closing image with a source of forward/ 
images/roject 1.png And I'll give it an al tag of ride 
because if you take a look at my images right here within the public folder images and then we have our project one 
you'll see that this is ride a react native Uberlike application which if you 
want to learn how to build well you can do it for free on YouTube If you wanted to put the image or the thumbnail of 
your project which you most likely want to do unless you build this one of course then you'll have to upload your 
own image to the images folder and just refer to it right here And then you'll be able to see it right at the bottom 
Within this div containing the image I'll create another div with a class name equal to 
text-content And within it I'll display an H2 that'll say 
ondemand rides made simple with a powerful 
userfriendly app called Ride Of course you can enter the title of your 
application right here Then we can have another description paragraph right below with a class name of 
text-white-50 and on medium devices text- XL And here I'll copy what I have 
in the already deployed website an app built with React Native Expo Tailwind CSS for fast user-friendly 
experiences Of course I invite you to talk a bit more about the technologies you used here or what obstacles you 
encountered while developing it And now we can head over below this div for the left side and focus on the right side 
There we can have one div which will wrap those two additional projects with a class name of project list wrapper and 
overflow-hidden Within it we can have a div for our first project So let's give it a class name of project And within it 
we can render a div within which we can render that project's image So let's 
give it a source of images project 2.png with an alt tag of library 
management platform If you save it you'll see one image right here But we 
can position it a bit better by styling this div that's wrapping it with a class name of 
image-wrapper bg of hash ffb just like this So we nicely position 
it within the screen Right below this div containing the image we can also render an H2 where we can simply say 
library management platform In this case we don't need to give it a description because this is a secondary project So 
let's go ahead and copy this entire project div So for me that's this red one right here And I'll paste it one 
more time just below this time for our second project So I'll change the 
background color a bit so they're not the same to FF7 EB There we go So just a bit of a 
different color Image will point to project 3 And the AL tag will say YC 
directory This is yet another of our YouTube projects YC directory which is a 
startup showcase app Of course I invite you to 
put your own projects right here And now is the time that we add some animations to this screen It doesn't look that 
exciting on mobile but on desktop we do have a big project in the left and two smaller ones on the right But if you 
compare it with the final project you'll notice that there they nicely appear one after another Whereas on our current 
application they just show up and that's it So let's animate them one by one To 
do that you'll want to give each one of these project divs its own reference So 
right at the top let's create a new const section ref is equal to use ref 
coming from react And at the start set it to be equal to null We need one for the section And then we need one for 
each one of the projects So I'll say con project one ref is equal to use 
ref at the start set to null again and then I'll duplicate it two more times 
for the project 2 and project 3 Now we can give a ref to the main section So 
I'll actually rename this to an HTML 5 semantic section tag with a ref of 
section ref And then I'll also give it to each one of these projects The first one being this first project wrapper 
I'll give it a ref equal to project one ref And then I'll head over to this 
second project and I'll give it a ref of project 2 ref And finally for the third 
one I'll give it a ref of project 3 ref So now all of these different divs or 
projects have different references attached to them So now we can apply 
some animations on them Let me show you how to do that using GSAP First things first we will import GSAP within curly 
braces from GSAP And the one thing that you want to do is say 
GSAP.register plugin And you'll pass in a scroll trigger which you'll need to 
import from Gap So say import in curly braces scroll trigger coming from gap 
scroll trigger and finally we'll also need to import the use gap hook which we used 
before which is coming from at gap react You need to register this plugin because 
otherwise gap won't know that you want to apply some scroll related features 
You already know how to start applying gap animations You do it using the use gap hook So let's say use gap right here 
And you have to give it a callback function with a dependency array right 
here at the bottom It works similarly to React use effect This means that everything in 
this block of code runs only once when the component mounts So there's one thing that I want to do first and that 
is fade in the entire section that shows these different projects I can do that 
by using the section ref.curren and I want to animate it from 
and to something So I'll actually have to say gap from to and then the first 
parameter you pass to it is the reference to a div that you want to animate Then you pass from which 
animations you want to go So I want to go from opacity of zero And then you for 
the third parameter pass where you want to go You want to go to opacity of one 
throughout the duration of 1.5 seconds And I'll actually put this into multiple 
lines so it's easier to see what's happening So gap from two apply to this 
div opacity from zero to 1 throughout the duration of 1.5 seconds If you do 
that and reload you'll notice that now it fades in pretty nicely And now we 
want to animate each project on scroll one by one We can do that by gathering 
them into an array and then loop through each one and create a scroll animation 
So right at the top I'll say const projects and create an array of those 
projects Then to it I want to add a project one 
ref.curren project two ref.curren current and finally project 3 
ref.curren So we have stored all of these references in an array Then we want to say 
cards So for each card and take its card index open up a new function 
block and then run the gap from to 
function What do you want to animate well I want to animate a card Which card 
well the one that we're going over for that specific round of the for each loop And what do I want to do to it i want to 
start it at Y50 and opacity of zero which means that 
it starts as invisible And then what I want to do to it is I want to change the Y to zero 
which means that we're going to move it back to its normal position and make it fully visible by changing the opacity to 
one throughout a duration of 1 second And I also want to add a delay to 
stagger when they load So I'll say 0.3 seconds and then take the index plus one 
That's because the indices start at zero So instead of having 0 to 1 we'll have 1 * 0.3 So the delay for the first one 
will be 0.3 Then for the next one it'll increase to 0.6 And then it'll increase 
one more time to 0.9 And finally to know when we want to apply this scroll animation we have to have a scroll 
trigger Here you can say when you reach which portion of the screen when do they want to trigger it and we can say the 
trigger is actually the card So animate when the card enters the viewport And 
then you can decide when exactly you want to start it For example start when the top of the card is near the bottom 
of the screen So about 100 pixels from the bottom And right here I should have 
said projects So we're mapping over each one of these project cards Okay So now 
if you reload and scroll down well you won't be able to see the animation just 
yet You'll just be able to see this one where it goes from opacity zero to opacity 1 So why cannot we see this 
animation is it something with the for each loop well not really It's just that 
you have to use Gap from within the use GSAB hook So simply select this and 
bring it down into the use GUB hook right here There we go And you can also bring 
these projects here So now we're saying use Gap and then we're applying the GSAP 
animation So if I now save this scroll up to the top reload and then scroll 
down you can now see how each one of these nicely appears as you scroll And 
of course let's not forget that this looks even better on desktop devices So as you scroll we get all of them appear 
nicely one by one Great And that brings us to the end of the showcase section 
Now we could focus on the next section but now that we have the hero and one more section what we can focus on 
instead is implementing the navigation bar because now we have two different things that we can scroll from and to So 
let's do that Next let's get started with developing our navbar It should look something like 
 
this on desktop where if you scroll down you can always get back to the top of it by clicking your name And then here it 
allows you to smoothly scroll to different parts of your portfolio And 
then on top we have contact which brings us all the way to the bottom to this great 3D model that we'll implement soon 
And then if you check it out on mobile it'll be very simple We don't need the viewer to necessarily see every single 
thing If they want it they're going to scroll but then at the moment where they want to contact you they can just go 
here and do that immediately So let's focus on implementing the knobbar We can 
start by creating a new component right within source and components and create 
it right here by creating a new navbar.jsx file Run rafce and just 
import it over in your app.jsx above the hero section So that'll be the navbar like this If you 
do that and go back to your website you should be able to see it right here on the top and then we can implement it 
Just head over into it turn it into an HTML 5 semantic header tag and give it a 
class name equal to navbar and within it create a div that'll have a class name 
of inner and within it render an anchor tag that'll have a class name of logo and an 
href of hash hero pointing to your hero section when clicked And there you can 
type your name I'll type Adrian JSM Of course you can put your first and 
last name right there There we go Pretty cool Right now right below this anchor 
tag we can render nav for the rest of the navigation items And here I'll give 
it a class name of desktop So we know that whatever is within this nav only 
appears on desktop But then after the nav I'll render another anchor tag 
that'll have an href pointing to hash contact with a class name of 
contact-bn and group And within it we can render a div with a class name of 
inner And within it we can render a span that'll simply say contact me There we 
go So now we have a contact as well as AdrianJSM right here at the top Now the 
question is what do we show within the nav well for that we'll have to head over to the desktop version of the 
application So I'll expand it a bit and within it let's render a ul an unordered 
list Within the unordered list we want to map over all of our link items Sure 
you could create an array of objects where you have a title for each one and then you also have a URL that you want 
to point to but it's always better to declare those links in your constants in 
case they change You don't have to change them here So simply say nav links 
and import it over from constants index.js If you want to change those links you can but these are the sections 
that our portfolio will have work experience skills and testimonials 
Sections that every single portfolio needs to have So once you're in there just map over them dstructure the link 
and the name that we get from each one of these links and then for each one 
automatically return a list item an LI And since we're mapping over it we also 
have to provide it a key which can be a name since it's unique with a class name 
of group And within each one we can render an anchor tag that'll point to 
the link So this is a dynamic link property different for each one of these links Within it we can render a span 
element that'll render a name And within it we can also render another self-closing span that will have a class 
name of underline allowing us to have that very cool visual effect So if you save it you 
should be able to see work experience skills and testimonials with this cool underline And if you click on work since 
that is the first section we have implemented you can immediately see it right here alongside its nice 
animation Let's try it one more time I can head up and I can see my work both 
here and here and it nicely animates Pretty cool right now check this out If 
we scroll down you'll notice that our navbar will kind of be hidden by some of the other more colorful elements that we 
have on the screen That means that we want to actually give it some kind of a background so that it's visible even on 
top of these elements For that we have to keep track of the state of the navbar 
If we're here just leave it like this It has enough contrast with the background But as soon as we scroll down we'll then 
apply some kind of a background To do that we have to figure out when have we scrolled and when have we not So right 
here at the top of the navbar I'll say const and I'll define a new use state 
called scrolled and set scrolled At the start it'll be equal to the use state 
That'll simply say false And this use state of course is coming from React 
Then I'll open up a new use effect coming from React that'll happen only at 
the start or when the component gets mounted So I need to define the dependency array as an empty array And 
within there we want to figure out how do we handle the scroll So I'll create a handle scroll function which will check 
whether the user has scrolled at least 10 pixels So I'll say const is scrolled 
is equal to windowscrolly is greater than 10 If that 
is the case I'll set scrolled to true because it means that the user has scrolled And now I want to add this 
event listener to the window It'll be a scroll event listener and it'll call the 
handle scroll function And I also want to unmount it to clean it up So I'll say 
return callback function window.ventlist listener scroll and 
handle scroll So this way we're still keeping all of the optimization in React 
by removing or cleaning up the event listener when the component is unmounted So now that we have access to this 
scroll state let's put it to use See this navbar we want to apply different classes to it depending on whether the 
user has scrolled or not So I'll make this class name dynamic and a dynamic 
template string for that matter it'll always have the class name of navbar but if scrolled is true in that case I'll 
also give it a class name of scrolled else I'll give it a class name of not scrolled So if you check out both of 
these you can see that scrolled simply applies a top zero and a background black and then not scrolled applies a 
background transparent That's it That's the only difference So now if you scroll down right here you'll notice that now 
it has a dark background So it's still fully visible even when appearing over 
all of these elements And then if I go up it simply disappears Makes sense right and with that in mind your navbar 
is now fully completed It scrolls to work and to home but later on it'll also 
scroll to all of these additional sections which we just about to implement 
So let's start with the next one in the list and that one is the logo showcase 
that scrolls through the logos of different companies that you have worked with in the past So let's do that 
 
next Let's start implementing the logo carousel This is all about social proof 
You want to show off client logos in a smooth continuous scrolling This is 
called a marquee I think just like the top tier agency sites do So let's create 
a new component just for it I'll head over into the components folder and create a new file called logo 
section.jsx within it You know the drill Run rafce and then import it right here 
Logo section as a self-closing component right below the showcase section Once 
you do that you should be able to see an empty piece of text So let's head over into it and instead of this empty div 
create a div that has a class name of on medium devices margin Y of 20 So that's 
20 on top and bottom but typically margin Y of 10 So only on medium devices 
do we want to have that larger margin Y And then also give it a position of 
relative right within it Create two separate self-closing divs Both of which 
will have a class name equal to gradient edge and then duplicate it You'll see 
very soon what that does but essentially you can see how these logos disappear on the left and then they start appearing 
from the right as it moves So right below create a new div that'll have a 
class name equal to marquee and give it a height of about 52 Then right within 
it create another div that'll have a class name of marquee box with a medium 
devices of gap 12 in between the elements and typically a gap of five should do the trick This marquee is the 
visible area that you see on the screen But the marquee box will actually have twice the width and it'll animate 
indefinitely to the left This is how you can apply animations So let's research them a bit deeper You can see that this 
marquee takes 100 dynamic viewport width and we hide it Okay so this is what you 
can see on the screen But this marquee box will actually have 200% width and 
then an overflow hidden So we're animating it outside of the screen And 
we're applying a simple CSS animation of Marquee 60 seconds linear infinite 
Believe it or not that's all it takes You can do a lot of stuff built right into CSS So the only thing remaining for 
us to do is to add the logos We're going to loop through all of the logos twice 
so it feels infinite First we need to import the list of the logos So I'll say 
logo icons list coming from constants And as you can see I put about 11 logos 
right here But feel free to remove them or feel free to add the logos of the companies that you worked for or that 
you collaborated with And if you didn't work with any major companies that have known or good-looking logos well then 
you might just skip this section altogether if you want to The only thing you have to do is comment it out from 
here and then move over to the next section With that said I will map over 
it get an icon for each one and then simply display a new component for each 
one of these A component called logo icon So let me define it right here 
since this is the only place where it'll be used Logo icon It is a self-closing 
component that simply accepts an icon and it returns a 
div with a class name of flex-ash none flex- center and a marquee 
item and it'll render an image of a source icon img path as well as an al 
tag of icon.name So now we can loop over or map over those logo icons like this We can 
give it a key equal to icon.name and then we can pass over the 
entire icon equal to icon to it So now if you save this you'll be able to see 
the logos But what we have to do is actually duplicate it one more time And 
we're doing this because this trick creates a duplicate stream of logos So when the first one sets to scroll out 
the second one continues seamlessly Hopefully it makes sense But yeah believe it or not that is it The magic 
here lies in this animation CSS property where you apply a specific type of the 
animation Choose the duration choose whether it's linear or not and then make it infinite and then that'll scroll the 
images from left to right Pretty cool right once again I'm totally aware that you might not have hundreds of companies 
you worked for in the past So if that is the case you can totally just comment this section out and focus on the next 
one to come Because the next ones are cards that feature your 
 
strengths To start implementing the featured cards let's go ahead and create a new section within the sections folder 
I'll call it feature cards.jsx run rafce and simply import it 
within the app feature cards Now that I look at it the logo section is also 
technically a section and not a component So let me move it right here into the sections but make sure to fix 
up these imports so that it's coming from sections instead of from 
components Great With that said move over into the feature cards and let's 
start implementing them The goal of these cards is to highlight your top strengths as a developer Things 
like the quality communication and timely delivery of your projects Each 
card is a compact summary of one of your core abilities using an icon a title and 
a description So first let's create a layout by creating a div that'll have a 
class name of w full padding x of lg and 
within it create another div that'll have a class name of margin x auto and 
let's split it into a grid that has three columns Now you want to map over 
your abilities coming from constants index jsx These are some of the 
abilities that Chad GPT thinks are important but I want you to go ahead and 
change all of this text right here because you are a special individual and you have your own strengths So change 
the titles descriptions and if needed image paths as well to showcase what you 
are capable of Then we want to map over all of these different strengths And for 
each one we can dstructure the image path the title and the description And 
then we can just map over them and automatically return them For each one 
I'll return a div And for now I'll make that div simply render the H3 that'll 
say title If you do that and go back to our current application you'll see 
quality focus reliable communication and on-time delivery Let's style it a bit different 
to make it a card First I'll give it a key since this is an element we're mapping over I'll make it a title since 
the title is unique And I'll give it a class name of card-border 
I'll also give it a rounded dash XL which will make the corners rounded A 
padding of eight to give it some space Also flex flex- call and a gap of four in 
between the elements within the cards Next I'll create an inner div right here 
that'll have a class name equal to size of 14 flex items center justify- center 
and rounded- full This is for the icon we're going to display So let me render 
a self-closing image tag with a source of img path and an al tag of title 
If you save this you should be able to see this icon appear which already brings so much more life into it And 
below it we have this H3 to which we can give a class name of 
text-wide text-2XL font- semibold and margin top 
of two There we go Looking good And below it we can render a P tag with a class 
name of text-white-50 and 
text-LG And it can render the description There we go This is already 
looking so much better One thing that I noticed is that right here I misspelled padding So this was supposed to say 
padding XLG And that'll provide some padding on left and right And to give it some more 
vertical space to breathe we need to rename this to grid three calls as in 
columns plural because this will apply this grid column layout which will nicely space them out on all different 
types of devices There we go This is looking better Looks great on mobile and 
nicely complements this logo section And if you check it out on desktop it looks 
great too Perfect Oh yeah I don't think I've seen the logo section on desktop It 
looks even better because now you should get the idea of why we're using double the icons So once some scroll to the 
left side of the screen new ones appear on the right side Perfect This section 
is done as well So now we can showcase not only the companies you worked for but also your top features But what 
matters even more than features is your experience So let's develop one of the 
most exciting sections of this portfolio next Your work experience timeline It 
has a couple of interesting elements such as this card right here that has this cool hover effect or this timeline 
that expands as you scroll down and changes colors depending on the logo of 
the company that you worked for Pretty cool stuff right so let's do that next 
 
professional work experience Or maybe it's not work experience for you but rather you're showcasing the timeline of 
how you build different projects Either way this section will tell your career 
journey in a visually structured timeline blending the clean layout with 
these animated transitions On the left side you'll have testimonial style 
experience cards In the middle we'll have a timeline and on the right side you'll have all of your job 
responsibilities So let's start with creating this section I'll head over to the sections folder and create a new 
experience section.jsx I'll run rafce and I'll 
simply import it over below the feature cards There we go Makes sense right it 
appears at the bottom So let me head over into it and turn it into a section 
This section will have an ID of experience so we can nicely scroll to it from the navbar and it'll also have a 
class name of W full so it takes the full width of the screen as well as on 
medium devices a margin top of 40 to divide it from the top and typically a 
margin top of 20 It'll have section padding so we give it some space to 
breathe As well as on extra-l large devices padding x will be zero because 
we have enough space to show it all around Within this section we'll have another div that'll have a class name 
equal to w-ful age- full on medium devices 
padding x of 20 and typically a padding x of five Now within it we want to 
display our header title This is the title I'm talking about my career overview and then 
professional experience We'll want to turn this into a new custom component as we will reuse it in multiple places 
later on So let's do it by creating a new reusable component called 
title header.jsx run rafce and import it over within the 
experience section title header just so we can very easily and immediately see 
it at the bottom Then pass over a title 
equal to professional work experience and also pass a sub which is 
a subtitle that can say something like my career 
overview and maybe at the start of that sub we can also display some kind of an emoji maybe like a work briefcase or 
something like that So now we can head over into that title header and we can accept those props and display them on 
the screen So simply dstructure the title and the subtitle right at the top 
and return a div with a class name of flex flex- call items-c center and a gap 
of five and within it render another div with a class name equal to 
hero-b within it render a p tag which will render the subtitle and therefore 
you'll be able to see this my career overview if you open it up within CSS you'll see that we're applying a black 
background border some padding Y on top and bottom and X for left and right we 
are making it rounded making it fit the screen making the text a bit small and 
making it not wrap so it stays in the single line And then right below this 
div I'll create another div with a class name of font semibold on medium devices 
text 5 XL typically text 3 XL as well as text center And here we can display that 
big title headline such as this one professional work experience So now that 
we have the title for our experience section let's loop over our experience 
cards We can do it right here below the title by creating another div with a 
class name of margin top of 32 to divide it a bit from the top and a class name 
of relative Within it I want to create a div that will act as a wrapper for our 
experience cards So let's also give it a class name of relative a zindex of 50 
and an extra-large devices space Y of 32 and space Y of 10 on all other devices 
within it We want to map over our exp cards or experience cards coming from 
constants index.js You can see here that I created three different cards Each one is an 
object that has a review which is just like some kind of a description of what I did for that company an image path a 
logo path a title date and responsibilities I think this gives you 
a pretty good idea of how you should fill in this data yourself for your previous positions Once you do that 
you'll need to map over it So let's say map And for each one of these cards we 
want to automatically return a div Since we're mapping over it this div will have a key equal to 
card.itle since it's unique and a class name of exp card wrapper and within it 
for now just display a card.title so we can see something There we go I worked 
as a React Native full stack and front-end developer And now we want to 
make it look a bit nicer So let's first focus on this experience card right here 
that allows you to hover over these elements and then you get this nice looking border Now you can also see that 
we'll reuse this same card later on in customer feedback highlights or testimonials from specific people So of 
course that tells you that this will be a reusable component So let's create it I'll head 
over to the components folder and create a new card I'll call it 
glowcard.gsx because we have the glowing border I'll run rafce And within the 
experience section right here instead of rendering the title we can render a div 
that'll have a class name equal to on extra-large devices w2 over6 So this 
will give it a specific width on larger devices And then within it we want to 
render a glow card This will be a component that is not a self-closing 
component meaning something goes into it And what is that well that can be a div 
with a self-closing image tag that'll have a source equal to 
card.gpath with an al tag of card And then alongside passing that as the 
children into the glow card we can also pass the card as a prop which will contain all of the other card properties 
So let's head over into the card and let's accept all of these properties that we're passing into it First we get 
the card itself but of course we need to dstructure it And then we get the 
children which refers to everything that we passed over as a child of that 
component So here we can return a div that'll have a class name equal to 
card-border timeline-card rounded- excel and a 
padding of 10 Within it I'll display a self-closing div with a class name of 
glow And now you can slowly start seeing how this card will glow as you hover 
over it So let's try to look a bit deeper into how this glow works Well 
first of all we remove the pointer events so you don't get the cursor pointer So it doesn't seem the cards are clickable because they are not We 
position it absolutely over that element with full width and height in the middle 
of the screen And then we're focusing only on changing the border of that card as we move to it The code for the exact 
border is right here And I am applying a bit of a more complex gradient right 
here I found this CSS somewhere on the internet It could have been a really nice code pen and I saved it somewhere 
and then I ended up using it on this project Whenever you find some nice CSS always save it You never know when it's 
going to come in handy So now that we have this glow right here we actually want to display something within this 
card First we want to display the number of stars or the rating that this person has given you So let's do that within 
this div where I will open up a dynamic block of code and say array 
from length is five and then we want to get access to 
the index So we're mapping over these five elements We don't care about the first one We only care about the index 
So you do it like this And for each one you want to automatically return an image that'll be equal to a source 
images star.png It has to have a key of index 
and it has to have an al tag of star and a class name equal to size of five If 
you do this you should be able to see five stars for each one of these cards We can also style the div a bit further 
by giving it a class name of flex items center gap of one in between the stars 
and a margin bottom of five So now we have five stars within each one of these 
cards We can go below this div that's wrapping those stars and create another div with a class name of margin bottom 
of five And within it we can render a piece of text that'll render the review 
of the card We can give it a class name equal to text-white 50 and 
text-LG So we make it a bit larger And more importantly right below this div we 
can render the children In this case the children being the logo that we're 
passing over right here from the experience section But now if you hover over it just one side or one border 
actually lights up and you can see this gradient that is being applied to the top and bottom side of this 
border But now how do we actually make it follow our cursor well for that we'll 
have to do some math or rather we'll have to know about the position of our cursor So let me show you how to do that 
First I'll create a new reference to an element and I'll call it 
card refs and I'll make it equal to use ref And at the start it'll be equal to 
an empty array of references Then I'll create a function 
called handle mouse move It'll be a higher order function which means that 
first we want to figure out over which card are we moving over and then we want 
to get access to the event of the actual mouse So that move event and then once 
we have that we can figure out which card we're on So we'll say const card is 
equal to card refscurren and get the index of the 
current card we're on And if a car doesn't exist simply exit out of this function Now of course for this to work 
we have to give this div a reference And this reference will actually take in the 
element and it'll say card 
refs.curren index is equal to the element So depending on which one we're 
currently on we will only move for that specific card And I'll also call the on 
mouse move And I'll call the handle mouse move function and pass in the 
specific index that we are moving over Make sure that we also have an index here So we have to pass an index as a 
prop to this function So I'll say index And from the experience section 
I'll also pass over the index next to the card 
this index you have to get over right here as the second parameter of the map 
function Great So now that we have that as you scroll down you'll be able to see 
that no animation is happening We're not yet tracking anything right now We just know on which card we're on So now the 
magic happens First we have to get the mouse position relative to the card So 
first let's get access to the position of the card itself by saying wctck is equal to 
card.get bounding client rect like this Then we 
have to get the x position of the mouse by saying e dot 
clientx minus rect.ft minus rect.width divided by two 
I told you we'll have to do some math And we want to do the same for mouse y position which is e.clienty y minus 
wctop minus rect.height over two Not only do we have 
to calculate the position of the mouse but we also have to calculate the angle 
So I'll say calc the angle from the center of the card So I'll say let angle 
is equal to math ATAN2 This 2 is a static method that 
returns the angle in the plane in radians between the positive x-axis and 
the ray from 0 0 Yep I told you this requires some complex math but I really 
wanted to show you how to do this cool effect on these cards So to this you pass the mouse Y 
and then the mouse X positions Then you multiply it over with 180° divided by 
math.pi Then we need to adjust the angle so it's in between 0 and 360 So I'll say 
angle is equal to in parenthesis angle plus 360 modulo operator So this will 
give us the remainder of the division 360 And trust me I asked Chad GPT to 
help a bit with this So no worries if it's not fully understandable on the first try You can even copy this block 
of code and ask Chad GPT to explain it even further if my explanations are not enough And then finally we want to set 
the angle as a CSS variable by saying carstyle 
setpropy d-start and set it to angle + 60 So this way we have nice movement 
over our cards And before we test it out looks like I made a mistake here I should have said if no card then return 
But if we do have a card well then let's do all of this math and let's make it work So now check this out You can 
actually hover over this and depending on the angle that your mouse is pointing 
from the center of the card it'll actually change So if you very erratically move it around the center 
you can see how it moves But as you go to the outside the angle becomes smoother and then you can move very 
smoothly to different sides Again this is a very cool effect And do you need to 
know this as a full stack developer not necessarily Nowadays you can find a lot of these cool effects online But if you 
want to become an amazing CSS or front-end developer that delivers these 
kinds of exceptional crazy experiences and if this interests you then 
definitely go for it Try to understand on a deeper level how this gives us the angle how we're applying that angle over 
to a CSS property and then finally how once that property gets applied it 
actually calculates the gradient that we're applying to the border of this card But with that said this is looking 
great And we could have totally stopped here with the professional work experience but I want to dive much 
deeper I want to implement the full history of your work not just the testimonial So let's do that next But 
first it looks like I'm not passing the proper border right here So it's card 
and card border There we go So now it makes it look like a card And this makes 
the effect even better And of course don't forget that we're only halfway or 
maybe one/ird done with the professional work experience section That's because this is only the left side On mobile it 
seems like we've done everything but on desktop well we still have to add the timeline And then to the right side we 
have to add the full explanation of the experience So let's do that next Back in 
the experience section right below our glow card So still within the same div 
right below the glow card and below one more div we can create another 
div This div will have a class name is equal to on extra large devices w is 4 
over 6 So we have essentially split the screen into the first part which takes 
26 of the screen and the second one takes 46 Basically that's 1/3 and 2/3 So 
within this div we can create another div with a class name equal to flex and 
items-start And within it we can do another div that'll have a class name 
equal to timeline-wrapper within which we can 
render a self-closing div that'll have a class name of 
timeline And then below that we can create another div self-closing that'll 
have a class name of gradient dash line 
w1 and h dash full If you save this you won't see anything yet and that's 
because we have to animate this timeline with gap So for now let's instead focus 
on the second part of our screen which are going to be the experience cards So 
I'll head only one div below where we have this timeline wrapper And I'll 
render another div that'll have a class name equal to exp text flex On 
extra-large devices a larger gap of 20 On medium devices a gap of 10 And 
usually a gap of five with a position relative and zindex of 20 within it We 
can then display another div that'll be a wrapper for the image So I'll give it 
a class name of timeline- logo and within it I'll render an image which 
will have a source of card Logo path with an al tag of logo So now we can 
only see docker right here and the other two are not yet there because we need to 
fix up this gap animation of the timeline Next we can go one div below 
and create a div for the final card for our experience section It'll have an H1 
right in between it And this H1 will render the card.title There we go Full stack 
developer We can make it a bit larger by giving it a class name of font- semibold 
and text-3 Excel So now if I collapse this just a tiny bit you should be able 
to see it right here There we go Below it I'll display a P tag that'll have a 
class name equal to margin Y of five and text white of 50 And there we can render 
the car date There we go So now it says when you work there but we can also add 
some kind of an emoji right here and maybe make it a calendar so we can show the date But let's not use the current 
date Let's use the generic calendar There we go Now we can do one 
more P tag below this one that'll have a class name of text dash # 
839 CB5 So this is a color that I like for this one And let's make it italic 
And it'll simply say responsibilities There we go And now let's actually say 
what we did there So below the p tag I'll render a ul with a class name of 
list d-disk ms of five margin top of five 
flex flex- call a gap of five and text 
dash white of 50 Within there we can map over card 
responsibilities.m mapap where we get each individual responsibility and we can now show it as 
a list item So this list item will have a key equal to 
responsibility a class name equal to text-lg and finally it'll just render 
the responsibility for example developed and maintained userfacing features for the hosting 
website collaborated with UIUX designers and optimized web applications for 
maximum speed Uh these are all AI generated don't look that good but 
here's my quick tip for how you can write these in a better way This is basically what you have accomplished 
First use strong action verbs Developed optimized implemented right collaborated 
achieved for example for specific performance right so start with a strong action verb led work contributed you get 
the idea But then bring in some tangible metrics or achievable results So instead 
of just being generic with collaborated closely or developed userfacing features tell me how much performance have you 
improved For example improved app performance and then try to be specific even down to a percentage or a number 
improved front-facing app performance by 17% Or maybe improve the load speeds by 
two seconds Whatever you do try to be specific in what you did as that improves the credibility And now that we 
have the left side and the right side it's time to animate the timeline which is going to give it that final touch So 
let's focus on implementing that using GSA We'll start at the top of the screen So let's start implementing this gap 
scroll animation Uh we already have done a gap scroll animation when we were 
building these cards right here So you know that if you want to use a scroll animation you have to import a scroll 
trigger from Gap So right here I'll say import the 
original GSAP library coming from GSAP I'll also want to import the use gap 
hook coming from GSAP React And finally we want to get access to the scroll 
trigger which will allow the scroll animations coming from GAP scroll trigger And then you want to register it 
by saying gap.register plugin scroll trigger There we go And now we are ready 
to use this use gap hook right here So let's say use 
gap It takes in a callback function and an empty dependency array as a typical 
React use effect Great So what kind of animations do we want to implement here 
well first we want to reveal the left side cards by sliding them in from the 
left and fading them in See these cards we want to slide and fade them in If I 
show you the finished application and I reload check this out As I scroll down 
you'll notice these cards slide in There was the first one second one and third 
one So let's implement that I'll say gap We want to animate a card So where 
is this card coming from well even though we don't have a card on its own here we can use a gap utility Check this 
out I'll say gap.utils dot to array and we can take a 
class name called a timeline card and we can turn it into an array of cards and 
then we can map over each one of these cards and get access to that card 
element Then once we actually have access to the card we can say get this card from these 
specific animations or this specific state First we want to move the card in 
from the left side So I'll say X% is equal to minus 
100 The opacity will also start from zero And we want to set the origin of 
the animation to the left side So I'll say transform origin will be left and 
left I also want to add a duration of 1 second And ease which is a curve of how 
we're going to animate it or the speed of the animation So I'll use the power two.in out It starts slowly and then it 
speeds up And finally we want to trigger the animation on scroll So I'll say 
scroll trigger Oh but first this ease has to be 
a string like this And I can trigger it on the card 
But when are we going to start well we're going to start the animation when the card is 80% down the screen So I'll 
say start top 80% If you now save this and reload you'll see how nicely it 
appears once you reach the bottom part of the screen And then also another one and another one You don't want to show 
it too soon because the person is still viewing the top part But as you're scrolling down you want to show it just 
as it hits the screen So you see something happening There we go Now we want to animate the timeline As the user 
scrolls we want to move from top and then go down So in this case I'll use 
another gap functionality I'll say 
gap.2 timeline So that is the class name we're switching And then we want to set 
the transform origin to bottom bottom which means that it can also start from 
the bottom So see as I scroll up it goes away And if I scroll down it appears 
I'll choose an ease in this case a power one and out and add a scroll 
trigger where we want to trigger it on the dot timeline when the start is at top 
center and we want to end it when we reach 70% down the screen I'm going to 
be honest I didn't come up with these values immediately Coming up with the specific values takes time and testing 
though I might maybe set it to 50 and play around a bit and see how it behaves and then update it later on Also we want 
to update the animation as the user scrolls So I'll say on update and this 
still goes within the scroll trigger We'll call a function that takes a look at the self current animation or current 
progress and it scales the timeline height as the user scrolls So from one 
to zero as the user scrolls up the screen So I'll say gap.2 
timeline and I'll set the scale y to 1 
minus self.progress Now if you reload you will start seeing the timeline as we hit the 
center of the screen and then it'll scroll down and follow us as we go Check 
this out And then as you reach the end we cannot go any further right now because we don't have additional 
sections Later on we will But if you start scrolling back up you can see that it starts disappearing This is a super 
cool effect isn't it and the last part we could also animate the text on the right We can make it look something like 
this Considering that the text on the left scrolls from the left we don't have 
to move this from left to right because then a lot of things would be moving We can just fade this one in So see as we 
reach this point it'll slowly fade in alongside this icon One more time check 
it out It faded in So let's add that fade in animation 
To get started with it I'll actually copy this entire gub utils to 
array and then I'll paste it at the bottom just before the use gub hook 
stops In this case we're not working with the timeline card but rather the experience So exp text And for each 
piece of text we want to run the gap from we want to move it from zero 
opacity 0% because it's not moving Throughout the duration of 1 second 
we're not moving the origin so we can leave it as it is Ease can be as it is 
Scroll trigger will be text and start can be top 60 So we show it a bit later 
than we actually show the left side card Now if I reload and I scroll down notice 
how it nicely appears alongside this icon Perfect Oh but I was looking at the 
finished website So let's go to the current one Reload And same behavior 
It's only that we cannot see the bottom one yet because we can't scroll any further yet But as soon as we add the 
next section on our list we'll be able to see it And how does it look like on mobile well check this out We still get 
this timeline where it nicely appears and then it starts scrolling We see the 
hostinger We see the testimonial We continue scrolling down and it looks 
wonderful here We can even see the Docker one because it has more height Perfect Alongside the hero section I 
think this is the second most interesting section in this portfolio and the second toughest to build So 
great job on coming this far into this portfolio The next section is also super 
cool And here we'll develop these cards that have 3D tech icons that allows you 
to move them in space and time Pretty cool right so let's focus on the tech 
stack that you know and you use to build your websites with Next I'll collapse it 
so we can nicely get started on it Close all of the currently open files besides the app and let's focus on the tech 
 
stack Let's talk about the text stack In this case we're talking about what you 
can bring to the table and we'll show it by using these animated 3D logos for 
each tool that you're proficient in And of course if we cannot find a 3D icon I'll provide you with the alternative So 
you can just put an image right here and it'll still look great So let's create 
it by creating a new section within the sections folder and let's call it tech 
stack.jsx Run rafce and import it straight within the app below the 
experience section Perfect That's looking great So if we head back over here we can see the text stack and we 
can start by creating the layout We'll wrap everything with a div that has an 
id of skills so we can easily scroll to it Then we can give it a class name of 
flex dash center and section-padding And right within it 
we'll render another div within which we will reuse our title header component 
for the consistency of different sections This title header requires two 
different params or props The first one is title So I'll say my preferred text 
stack And then below we'll pass a sub I'll enter some kind of an emoji right 
here Maybe like a deal hands emoji And say what I bring to the 
table Or we can say the skills skills I bring to the table And 
there we go We can immediately see it right here So now we can render the 
skills grid with these 3D models We can do that right below the title header But 
first let's give this div a class name of wful full age- full on medium devices 
a padding x of 10 and typically a padding x of five And now right below 
the title header we can create another div with a class name equal to tech d- 
grid Within this div we'll want to loop through the tech stack icons array and create a component for each item So 
let's open up a dynamic block of code and say tech stack icons map where we get each individual 
icon And for each one we want to automatically return a div that'll have 
a key equal to icon.name And within it we can also for now just display that icon name So if 
you save it you should be able to see React Python backend interactive and 
project management Perfect Now to make it look a bit better we can style this div which will basically be a card So we 
can give it a card border We can give it a tech card class name as well Overflow 
of hidden group And on extra-large devices we can make it a rounded full and 
typically rounded LG Now what matters the most is what we show within it 
Instead of rendering the icon name I'll first render a self-closing div that'll 
have a class name equal to tech card animated bg What this will do is once 
you hover over it it'll actually animate it a bit which is not mandatory but I think it has a cool effect After that we 
can render another div that'll contain the content So let's give it a class name of tech card content 
And within it we can create a wrapper that contains the tech card experience 
which will render the 3D model of that specific tech stack icon So let me 
create a div with a class name equal to tech 
icon wrapper and directly within it we can render a new self-closing component 
So let's create it under the components folder And we can create a new folder 
and call it models as in 3D models And then within it we can create another 
folder which we can call tech logos And within it we can create a new 
tech icon.jsx and 
runce Perfect So now we have this tech icon and we can import it right within 
the text stack where we have the tech icon wrapper I'll call it tech icon like 
this and pass in the model right into it by getting it directly from the icon So 
we're mapping over these text stack icons And each one of these icons has a name a path to the model that is within 
our public models folder a scale and a rotation in case you want to change it 
by default And then we're passing it over here So now if you compare it you'll see that we have different tech 
icons and they're not yet in 3D but they soon will be Right below this div that's 
a wrapper for the tech icon we can have another div that'll have a class name of 
padding x and w full And we use these classes to 
add horizontal padding to the text and to make it take up the full width of the 
component So within it we can display the name of that icon So I'll say 
icon.name Perfect So now we have React developer right here and then we have the icon which wouldn't display in the 
middle And let's just make sure to wrap it in a P tag So if we close it like this you can 
see that it'll nicely get centered Now we can head over into the tech icon and 
start implementing that rotating 3D model for each one of the tech logos inside of a canvas Remember whenever you 
have a 3D experience you can show it within a canvas So before we get started 
let me explain how it works In simple terms this is exactly what we want to do 
First we want to load a GB model in a gltf format Then we want to add basic 
lighting to it so we can see it We want to apply environment reflections for realism Wrap the model in a floating 
animation And then optionally tweak the material like setting the color on a mesh And then we want to disable zoom 
because there's nothing to zoom into here We just want to be able to move it around So let's do just that We'll start 
by loading in the models right here I'll say const scene is equal to use gltf 
coming from react 3 And I'll just get in the model from the props that we're 
passing into the function So I'll say model Keep in mind we're passing it right here model is the icon And then 
I'll simply load in model path Perfect We just loaded the GB model 
using Dre's use GLT of hook And the file path comes from the model model path 
which is right here within our constants file So if you want to compare it check 
out the public folder and then head over to models and then you'll be able to see 
Python 3JS React Node and Git Perfect 
Now that we have loaded in the model we want to set up the canvas So think of the canvas as the starting div in the 3D 
world You cannot display 3GS properties within a div If you tried putting some 
ambient lighting here like this it wouldn't work But if you render a canvas 
right here coming from React 3 fiber then you can start using all of these properties So let's add a basic fill 
light with an intensity of about 0.3 Once again we can play with that 
very soon And right below it I'll add an environment coming from React 3J with a 
preset set to city So there are actually a couple of presets that you can choose 
from to load your elements within This city environment will add specific 
ambient lightning to achieve a realistic scene reflection It makes metal and 
glossy surfaces look real with minimal setup Then we're going to wrap everything in a floating animation So 
I'll say float coming from React 3J and within it I'll wrap a group and 
within that group I will render a primitive specifically an object of 
scene scene There we go So we can already start seeing some logos right here But you can see that they're not 
looking that good It's bad actually So let's modify the float I'll give it a 
speed equal to 5.5 And now you can see they're moving 
around kind of I'll also set the rotation intensity to 0.5 So they're 
moving a bit slower And I'll also give it a float intensity of around 
0.9 So now they're floating even more subtly But again you can totally change 
this You can increase the rotation intensity to one or maybe even two if you really want them to move around or 
keep it a bit more subtle Next we can also play with the group by giving it a 
scale equal to you can make it two you can make it three Of course it's going to be too big So I decided to provide a 
scale already within the model So you can just say model.scale scale which is going to scale all of these accordingly 
because some are bigger and some are smaller by default So this is coming directly from the index of the constants 
where you can see that scale is one for react because it's just the right size but for example python was too large so 
I lowered it down a bit and the node.js was too small so I had to increase the 
scale significantly We can also do the same thing with rotation So I'll say rotation is equal to model rotation 
Perfect So now they're all facing right toward the user As you can see the float component is pretty cool It's a utility 
from React 3J library used to create a simple animation of the model floating in space And what do you say that we 
also apply some additional light to make it look a bit more intentional let's say 
below the ambient light which you can see we can also play with it If I lower the intensity to zero well you can't 
really see the difference But if I do it to one they're going to shine really bright which we don't really need So 
I'll keep it very low But next we can add a directional 
light Position it around 555 Of course we have to spell it 
correctly so our app doesn't break Directional And I'll set the intensity to one Again makes a little 
difference You cannot really see it a lot with the React logo but if you pay attention to the NO.js logo you'll see 
how the corners shine just a bit brighter And you'll see it even more once we allow you to move the model 
around or orbit it around For that we'll use the orbit controls We have already used it before 
So you can just say orbit controls and just pass the enable zoom set to false 
because we don't want to zoom in We just want to be able to move them around And check this out Just like that you can 
move this logo around and see it in all different lights Great Now there's just 
one tweak I want to do and that is to change the color of this 3JS logo Originally it is black but it's not 
really looking good alongside our background So what do you say that we tweak it just a tiny bit i'll add a use 
effect which will allow us to apply a specific effect as our components load 
just initially on mount And we want to do it whenever the scene changes So if we load the scene later on then we want 
to apply to a specific scene I'll then say if model.name name Oh and don't 
forget to import use effect coming from React That's very important So now if 
model name is triple equal to 
interactive developer in that case we want to set 
the scene scene.traverse So we want to traverse a 
child element of that scene and we want to check if child is 
mesh and if childname is triple equal to 
object_5 It took me some time to find it but basically we're targeting that specific model of 3JS Then I want to set 
the child material to be equal to new three dot mesh 
standard material and I want to pass in a color 
of white and to be able to use this three make sure to import everything as 
three from three Perfect So if you do this you can see that we can now change 
the color or we can specifically target the material of this specific mesh You 
can change it to red but you have to reload the screen There we go But of course we're going to go with white It 
looks very good on our background There we go This is nice Now it's possible 
that maybe you don't know Python and you're wondering how you can replace this for some other technology that you 
want to include here Don't worry I'm going to teach you how to do just that very soon But before that there's just 
one little part missing from this section and that are of course animations So let's go back to the text 
stack component and let's animate these icons one by one I'll of course use the 
use Gap hook coming from Gap React We 
will target it like this And within it I'll say GSAP which we have to import of 
course So import GAP from GSAP Oh I think it has to be within curly braces 
actually So I'll say GSAP from two What do I want to animate i want to 
animate the tech card At the start I want to move the card down by 50 pixels and set the 
opacity to zero And then at the end I wanted to move the 
card back to the top I want to reset the opacity to one throughout the duration 
of 1 second Ease can be set to power two.in out which we used before as well 
Stagger can be 0.2 which means that each animation will happen 0.2 seconds after 
the other And then we can also add a scroll trigger and we want to trigger it once 
we get to the skills section and we want to start it once we reach the top center 
part of the screen So now if you reload and start scrolling down you can see how 
they will all load one after another But of course that looks even better on desktop So if you reload and go to the 
bottom check this out 0.2 seconds for each one Let me show you one more 
time There we go So they all load from the bottom to the top and they also go 
from opacity zero to opacity 1 And you can see them all like 
this This is looking great You can also spin them around super fast That's cool 
And um I guess the question is what if you don't know Python well I prepared an 
additional part of this section for you So you can replace this with any other static image or no it doesn't have to be 
static If you want to take some time and search the web for some other 3D icons 
of technologies that you know go ahead Maybe go to SketchFab and search for something like I don't know Nex.js but 
it might be hard to find the wider version of the NextG.js logo Or maybe you want to add something else If you 
can find a 3D model for it just plug it in point to its path So head over to the 
constants index.js JS and just add it to the models point to that 3D file most 
likely with a GB extension and load it in But maybe you won't be able to find 3D icons for all of these different 
technologies So let me show you how we can make it work with the regular images I'll head back to the text stack and I 
want to go after we finish mapping over these icons and I'll add a new part I'll once again map over the text stack 
images this time because I also prepared some images for you I'll say map We get 
an individual icon And for each icon we want to display a div This div will have 
a class name equal to very similar to what we had above So let me actually 
copy it This div right here And I will paste it here Within it we can display a 
self-closing div with a class name equal to tech card animated bg as before And 
we can open up a div that'll act as the content wrapper So I'll say tech card 
content And then within it a div that'll have a class name of tech icon wrapper 
Still the same as above but the only difference is that here now we can display a regular image So source of 
icon dot image path instead of a model And then right below it we can render 
another div that'll have a class name of padding x and wful and it'll render a p 
tag that'll render the icon So if you save this you'll see that just 
below we have an image variation of the same thing Now is this one better well 
of course it is And for some you can have 3D models but for others if you cannot find the logo in the 3D format 
then you can use this section right here because this is much easier to replace You can go to constants text stack 
images and just download the PNG image put it in the path and then change the 
name map over it and you're good I got you covered I know that you guys know so 
many technologies and I wanted to make this portfolio as customizable as possible for you So for now I'm going to 
use my text stack 3D models but you can opt for using just regular images in 
case you want to have a consistent showcase of the text stack that you specifically know And that brings us to 
the end of the text stack section which looks great on mobile as well as it does 
on desktop So in the next section let's focus on the testimonial section 
allowing you to brag yourself a bit not by saying good things about yourself but by showcasing what other people have to 
say about you The testimonial section is pretty 
 
simple yet as you start hovering over it you'll see that it is pretty cool I mean 
the goal of your websites is not to be flashy Things don't need to jump around 
They have to be minimal but still they have to showcase what you're capable of which is exactly what we do with this 
simple testimonial section A cool thing about it is of course this border that 
we have implemented And an even cooler thing is just how quickly we'll be able 
to get it implemented now that we already have this reusable card Let me 
show you I'll create a new section within the sections folder and I'll call it testimonials.jsx 
JSX I'll run rafce and import it within our 
app.jsx right below the text stack I'll head over into it and start implementing 
the layout First I'll wrap everything in a semantic section tag with an ID of 
testimonials so we can scroll to it from the navbar And I'll give it a class name 
equal to flex- center and section dash padding so it has some nice space to 
breathe Next I'll render a div that'll wrap our title So let me give it a class 
name equal to w full hful on medium devices a padding x of 10 and typically 
a padding x of 5 And within it I'll render a reusable title header component 
with a title of what people say about me 
And then I'll add a subtitle Maybe we render an emoji of a 
star And then say client feedback highlights And if you 
scroll down looks good and is consistent with other sections we have on the screen But now is the time that we 
render the grid of these cards We'll use a multicolumn layout similar to this 
masonry style card layout that you often see on these websites like Pinterest where you have images coming in at 
different heights within different columns It creates this visually interesting layout that says "Hey look 
at how much content there is It is basically infinite because you can only see half of this card here which means 
there's more at the top and you can only see half of this card here which means that there's more at the bottom And you 
want to have a similar feel with your testimonial grid as well to let people know that there's just so much good 
things to say about you So below the title I'll render a div that'll have a 
class name equal to on large devices give me three columns on medium devices 
give me two columns otherwise give me one column and give me some margin top 
of about 16 within it we can say testimonials dom where we get each 
individual testimonial and for each one for now we can render well let's do testimonial 
review so I'll say P tag and render 
testimonial review of course make sure to import testimonials from the constants index 
and give each one a name a mention maybe to their socials their actual review and 
a path to the image Of course you'll have to take some time to go through these and actually change them to the 
feedback that you were given Hopefully working with you was even better than working with me So if you do that you'll 
be able to see this scattered feedback right here But now we want to display it in a very nice layout And doing that 
will be super easy We just have to reuse the glow card Remember that card that we 
used right before here we'll just reuse it Let me show you 
how I will wrap everything in a glow card And I'll pass in some children 
specifically a div that has a class name of flex items center and a gap of three 
And here I can say test for now If you do that the website will break 
because you also have to pass a prop to the glow card of card is equal to 
testimonial so that it knows what to render Now if you scroll down you'll be able to see five different cards that 
all say test at the bottom But already half of it is done We have five stars 
and the reviews from the testimonial are getting passed over to the card The only 
remaining part is to show who gave us that feedback So I'll create another div 
within this inner div that'll contain an image with a source of 
testimonial img path with an all tag equal to 
testimonial name There we go So we can see different people Right now we can 
create another div right below it that'll render a p tag with a class name 
equal to font-bold And this one can say testimonial name I now see that we're 
repeating ourselves too much Testimonial image path name and so on So let me just dstructure those values Image 
path name and mentions And now you don't 
have to repeat yourself here You can just say image path Here you can say name Here where you're rendering a P tag 
you can also render a name But now you'll have to pass all of these within an object to the card because we no 
longer have access to the original testimonial So we have to pass all of them Name mentions review and image path 
But I think the glow card itself only uses a couple of things It uses the review Yeah that's it So we just need to 
pass over a review right here which we get over from the card If I save this and scroll to the 
bottom you can see that we still have five stars the review and now we also 
have the photo and the name of the guy But to increase the credibility even further we can render another P tag here 
with a class name of text white 50 And we can render the mention of that guy or 
gal uh which gives us their socials So if somebody wants to verify whether this guy is a real guy uh well then they 
would have to maybe check them out on Twitter or something like that Most developers nowadays have active Twitter 
profiles Also I noticed that we're missing some space in between the cards vertically on mobile devices So if you 
head over into the glow card we can add some additional classes to it such as a 
margin bottom of five and also break inside a void column This is a special 
CSS property that sets how page column or region breaks should behave inside a 
generated box It is perfect just for this use case where you have different cards one on top of another So this is 
great And with that we're actually done with the testimonial section So far we 
have only seen it on mobile but now check it out on desktop We have this 
nice layout where this card appears to be taking some more space than this one and so on And the more cards you add 
with different heights of the content the better it'll look like Remember that masonry Pinterest grid if you head over 
into the testimonials and maybe duplicate a couple of these right 
here and save it you can see how it adapts to the amount of content we have 
So go ahead and collect those positive testimonials It's always great to have some experts vouch for you With that 
said we're getting very very close to the bottom of our page Nonetheless it's 
going to be an amazing finishing touch where we'll implement this fully functional form that'll allow other 
people to contact you and then we'll implement another super cool artistic 3D 
model that basically says "Hey I'm going to be at my desk Feel free to send me an email." So let's do that 
 
Next last but not least section of the portfolio and maybe the most important 
one because without it how would people be able to reach you to hire you so 
let's get started with implementing the contact section Back in our project the last section we implemented was the 
testimonial section So now we have to add the contact section just below And 
recently I saw that Jet Brains released a new coding agent that can speed up our 
workflow So I wanted to test it a bit when creating this contact section I'll press command shiftp and open up Juny 
That's the name of our assistant If you're using WebStorm and you want to test it out with me I'll leave the link down in the description But for now 
let's try to be precise Let's say create a new section called contact imported 
within the app and within it use the class names that we typically wrap all 
of our sections with and also add a title header 
component right within it that says something about contacting us I'll 
turn on the brave mode and give it a go It is working right now and it actually outlined a plan Examine the current 
structure Look at the title header component since we need to use it Create a new context file in the sections 
directory Implement the contact component with appropriate class names in the title header And then import and 
add the contact component to app.js So right now it's actually doing all of that It's opening all of these things 
editing different pages It looks like it actually created a new contact section right here within sections contact and 
it ended up using the title header right here alongside with some other information Pretty cool Now it's editing 
the app and adding the contact section right within it by following the same structure we used before And it told us 
exactly what it did right here So we can roll back or just call it a day Now if I 
save this and give Juny some time to rest let's see what we have So it looks like it did exactly what I asked it to 
do It created a new section right here within the sections directory called contact It gave it an ID so we can 
scroll to it alongside some default class names And it also used our title header component with a title as well as 
a sub And it even added an emoji because it noticed that that's exactly what we're doing for other sections And then 
since I wasn't precise on what we want to see below it created a generic structure where somebody can actually 
copy this email and send it to us Pretty cool stuff that it was able to do all of this Not just generate code but also 
create files for us If you didn't end up using Juny just yet that's totally fine 
You can pause this video and copy this code right here where it generated this title header But can we take it a step 
further can we maybe get it to create a layout right here where we're going to 
have a form and then also it'll create a new component on the right side that'll 
allow us to display this greatl looking 3D model Well let's give it a shot I'll 
once again open up Juny and say something like within the contact 
section just below the title header And by the way I haven't used 
Juni before so I don't know how precise I have to be So better to be as descriptive as possible but maybe it 
works with less info as well I don't know So right here I'll say within the context section just below the title 
header create a layout with a grid 12 calls class where on the left side we'll 
have a form that has labels and inputs for for the name the email and the 
message and of course a submit button You can find some classes within the 
index.css to keep it consistent And then on the right side of that form create and 
display a new component called contact 
experience within which we'll later on display a 
3JS canvas by importing a computer 
optimized.gb GB file and immediately add some lights and meshes 
so we can see it on the screen This is a super hard task and I'm 
not expecting Juny to get it right on the first time but who knows let's see I love testing these AI tools as they just 
make you that much more efficient of a developer There we go It's researching 
everything just to get some context and then it'll try to create stuff Okay looks like it started editing the 
contact experience part So if we head over to our components we can see the contact experience and it is writing 
code right now already putting in the canvas and some lights and meshes and the environment Looks like it's keeping 
in mind what we did for the hero section and it's done Juny says "A grid layout 
was implemented in the contact section featuring a form on the left for name email and message inputs alongside a new 
contact experience component displaying a 3D computer model using 3JS on the right The implementation is error-free 
and all components function as intended This is super cool but let's see if that 
is really the case It looks like it actually generated a form that is super similar to the one on the final 
application Just a couple of tweaks and it'll be there And it also left some space right here on the right to display 
our canvas but we'll have to make a couple of tweaks to actually get it to show So let's explore what it did within 
the code If I head over to the app we still have the contact section It 
created some states handle changes as well Oh so actually we can already type 
within this form That's super cool And we have a form where we can actually submit that data And after that we have 
our div for the left side of the form Let's go through it together So if you haven't used Juny we can actually go 
ahead and write it together ourselves manually Okay first things first Right below our title header we have a div 
that has a class name of margin top of 16 and grid 12 columns 
Then we have a contact form left side that has a div where we have on extra-large devices call span of six In 
this case we can maybe make it five so that then the right side takes a larger portion of the screen And I'll also 
remove this part We won't need it as later on as we continue developing our layout we'll make sure that it all fits 
nicely if we're on mobile devices So within this div I'll create another div 
that'll have a class name equal to flex-c center 
card-border rounded- excel and a padding of 10 And within it I want to bring my 
form So let me copy the form and just bring it a couple of steps up right here 
within this div If you now save this you'll notice that it looks something like this Make 
sure to give it a class name equal to w- full flex flex- call and a gap of seven 
And let's look into the top part We have an id of contact flex center section 
padding We have a div that has a class name of w full h full on medium devices 
padding x of 10 and typically padding x of 5 Then just below the title header we 
have this div that then contains the left side of the form Let's just make sure that the right side is not included 
within that div So for the 3D experience I'll give it an extra-large call span 7 
so it takes a bit more space I'll remove the call span 12 and I'll set the min h 
to 96 So now you'll see that this will take seven out of 12 spaces and this 
form will take five out of 12 But on mobile devices it'll actually take the full width of the screen I can actually 
explain that by providing a border two and border solid red And you can see 
that this takes this part of the screen right now But if I do the same thing for the bottom one so for the right side 
it'll look something like this where now it takes the bottom part of the screen But as soon as you expand it you can see 
that this takes five out of 12 and this one takes 7 out of 12 which means that our layout is great So I'll remove those 
borders and we can continue with the rest of the code I know that it's possible that you might not have had 
this code at the bottom So if this is getting a bit more complicated I'll also provide a complete contact.jsx file 
within the video kit So you can copy it and have this form right here But with that said don't worry because we can 
also type it out together Next we have the form that has a class name of W full 
flex flex colon a gap of seven And within it we have a div I don't think 
this div will need a class name for a margin bottom We can just use the gaps to provide that spacing We have a label 
for HTML 4 for the name We have an input that has a type of text an ID of name a 
placeholder of your name and some parameters that we need to manage its value After that we have another div 
that has a label for email and also some properties for the email And finally we 
have another one right at the bottom that's managing the message property 
which is actually a text area Finally after that div containing the text area 
we have the button with a type submit And in this case we can style it a bit 
differently by rendering a div right within the button that'll have a class 
name equal to CTA button group within it 
we will display a div that'll have a class name of BG 
circle And you can notice that I'm recreating the button we had at the top That's because this one will be an 
actual submit button whereas the previous button was not really a button 
Technically it was an anchor tag that we used to scroll to some places Right below this div that says bg circle I'll 
render a p tag That'll render a text of send message and it'll have a class name 
equal to text And below it I'll render a div with a class name equal to arrow- 
wrapper and it'll render a self-closing image with a source of forward slash 
images/ arrow-down SVG and an all tag of arrow If you save 
that we'll once again have this beautiful button that allows you to send the message Then if we go a bit down 
below the div below the button and below the form and below two more divs we get 
to the second part of the screen Just a simple div with a min height taking 
seven out of 12 spaces on extra large devices And within it we can display another div within which we'll put this 
contact experience which you might not have yet if you haven't used Juny but don't worry because we're going to 
create it together This div will have a class name equal to W full for full 
width H full for height and a background color Let's make this a bright orange 
color that you saw in the preview of CD7 C2E 
If you save it oh it looks like we already get some kind of a canvas right here or at least a background color 
Let's make it a hover cursor grab So we give a user an indication that they can 
actually move around this 3D experience Let's round up the corners a bit by 
saying rounded 3XL And let's the overflow to hidden If you save this this 
is looking great but it looks like nothing's on the screen What if I expand it oh still nothing But if I drag and 
drop oh would you look at that the 3D model is actually here but we are at the bottom of the table So it looks like 
Juny was actually able to find a 3D model within our public folder and set 
up 3JS React 3 Fiber and React 3 Dre with Orbit controls to allow us to see 
this model It messed up the positioning a bit but that's totally okay because we can easily fix that So let's head over 
into the contact experience or create it for the first time if you haven't already and let's see what we have over 
here As before I found this model on SketchFab completely for free So you can 
download it and use it from here But this time I'll actually teach you another strategy of how you can 
autooptimize your models Check this out If you head over to the public folder 
and head over to models you'll see that we have a computer optimized as well as 
the computer optimized transformed If you rightclick it and open it within your file system you'll 
notice that the computer optimized has 486 kilobyt whereas the computer 
optimized transformed only has 40 That is more than a 10-fold optimization Huge 
So let me show you how you can achieve that As before we'll use this gltfjsx package but this time we'll also 
apply a t flag which transforms the asset for the web Draco prune resize 
It'll automatically optimize the model So within our code just open up a terminal cd into public and then cd into 
models Then run mpx gltf jsx computer- 
optimized.gb-t and press enter You'll see that this will create a new computer 
optimized.jsx file So move it into components and then models Then head over into it to see 
what was generated and rename it over to computer 
You'll see that it's getting the nodes and the materials by using the use gltf 
computer optimize transformed but make sure to add forward/models right here 
before it So models computer optimized And then we want to do the same thing right here at the bottom 
for/models/comput optimized And now it has two different meshes to which we can 
also add some shadows So say cast shadows as well as receive shadows This 
will have that special animated effect on our model Now head back over to the 
contact experience file and import that model Even though what Juny created was 
totally working I'll delete it just because we now optimized this 3D model even further Maybe Juny would have been 
able to do that as well if I told it to But for now within this canvas simply create a group 
Give it a scale of like 0.03 because it is a big model And let's change the 
position to something like 0 minus 1.5 and then minus two I found this position 
to work the best And of course let's say cast shadow Within this group you can 
render the computer model coming from components models So in my case if I go 
back to the application I can now see this beautiful model right here with a lot of light and not too many shadows at 
least not yet But hey it's here for you It might not be there yet as we haven't 
added those additional things But don't worry as we're going to do that right now First I want to look into orbit 
controls We will set enable zoom to false and set the min polar angle to 
math pi over 5 and max polar angle to math pi / 2 This one limits how far the 
user can rotate down and this one limits how far the user can rotate up So we 
don't want to allow them to go too much up or too much down because then the scene doesn't make any sense And now of 
course we want to play with the lights I'll remove this environment as we don't need it in this case There we go So now 
this looks a bit more dull but we want to create a cozy and warm 
environment So let's play with the ambient light with the intensity of 
0.5 a color of hash FFF 4E6 That's going to give it that 
warm tone Let's also play with a directional light of something like 553 
with an intensity of 2.5 and a color of hash 
FFD 9 B3 Okay we're getting there And 
instead of this spotlight I'll add another directional light This time with 
a position equal to 5 91 There we go Cast shadow will be 
turned on to true Intensity will be also set to 2.5 and we'll add a color of hash FFD 
9B3 These lights will add that warmth And finally to actually cast shadows we 
cannot do it in this universe because this is just a orange background right so it's not reflecting any shadows To 
actually receive shadows we need to create a large flat surface under the 
model so we have something to cast the shadows on So right below this computer 
below the group create another group with a scale property of one one and a 
mesh that will receive shadows with a position of 0 minus 1.5 
and zero and a rotation of minus math.pi pi over two and then 0 
0 I found those values to work the best And within it we can display the plane 
geometry You can kind of see it right here at the bottom So we're basically adding the floor I'll give it args of 
3030 which is going to make it much larger so we have more space to cast shadows And I'll also give it a mesh 
standard material with a color of hash 
A46 B2D Check that out That's much better And you can kind of see it in the 
distance right where it ends But if you're just looking at the middle of the screen you won't be able to tell the 
difference But we still can't see any shadows can we let's head over into our 
computer model to see if maybe we didn't cast the shadows somewhere I'll actually zoom it in so we can see it better Oh I 
made a mistake This was supposed to be cast shadow not shadows because a mesh 
can only cast one shadow if it's a singular object and also receive shadow 
So you'll have to fix this on a couple of places So now that we know that that is good we can also take a look at our 
lights and everything that we have within this canvas This ambient light looks good to me Besides the light is 
maybe a bit too yellow So let's say 4 E6 There we go So now we have this more 
natural white color And you can see the shadows are being applied on this computer right here rather on the table 
It's just they're not being applied on the floor Looking at the directional light we have a position of 553 
intensity of 2.5 and some nice color This is looking good And another 
directional light which is also looking good to me Finally we have a group for the computer with a scale and its 
position and it says cast shadow Below it we render the floor So here I see 
receive shadows No this was supposed to be receive shadow There we go So now 
this scene really pops and comes to life because something in our minds is telling us hey this cannot be right This 
is flying in the air We need to see some shadows because the light is so bright So there has to be 
shadow which just shows you how important shadows are But with that in mind we have now developed this get in 
touch with me session with a form as well as this nice looking 3D desk setup 
which has this some sort of a cartoonish look with nice shadows So what do you say that in the next lesson we make the 
form functional so people looking your portfolio can actually send you emails 
 
To make our form functional and to allow other users to email us we'll use 
Email.js It is completely free and super simple to set up So just head over to 
email.js Create a free account or sign in if you have an account already And once you're in you should be able to see 
something that looks like this Add a new service Choose your email provider In 
this case I'll go with Gmail Give it a name and copy the service ID Head back 
over to your app and create a new env file Within it say 
vit_app email js_ervice ID and paste the service ID 
you just copied Then click connect account and continue It'll ask you 
whether you want to allow it to send emails on your behalf Select yes It'll say connected and click create service 
Once the service has been added head over to email templates Create a new 
email template You can leave it as a simple contact template Click create And 
you'll have to head over to settings and copy the template ID Then within your 
env file create another environment variable called v 
app.js template ID and simply paste the ID you just copied Then head over to 
account within the sidebar and copy your public ID This one you can add as vit 
app email.js public key So you should have three keys in your env Now back within 
our contact section We'll have to somehow get access to the values within 
our form fields And thankfully Juny has already done that for us We have created 
a new use state with name email and message fields And we're also handling 
the changes whenever user types anything on these fields Just to make it a bit more responsive we can also add the 
loading state So const loading set loading at the start set to use state 
false And then we can update the button with the loading state So right below where we have our button which is right 
here The button can be disabled if we're currently loading So I'll say disabled 
if loading And we can also change the text to say if we're loading then display 
sending dot dot dot else display send message Finally we can head over to 
handle submit First you have to prevent the default behavior of the browser to reload once you submit a form We don't 
want that within modern applications And now that we have collected all of these values within form data what do you say 
that we go ahead and hook it up to emailJS keys that we just got from their dashboard to do that you'll have to 
install a new package by running mpmi at email.js/browser js/b 
browser and then you can import it at the top by saying import 
email.js from at@ email.js/b browser and then within 
handle submit we want to take the data that we have but we'll make it into an asynchronous function because sending an 
email does take some time So instead of console logging I'll just open up a try 
and catch block In case something goes wrong we'll get an error and I'll say 
console log email.js error And maybe we can also display that error right here 
next to it And then we can also add a finally block which will be executed no matter whether we succeed or fail with 
that request And here we can just reset the loading to false because we want to stop it even when there's an error And 
then in the try we want to use email.js functionality to send the form First we 
will trigger the loading So at the top I'll say set loading is set to true And 
then here we'll say await email.js.end form And you want to pass 
all the keys that we saved import meta 
env App email.js service ID That's the 
first one You want to duplicate it The second one is the template ID So how do 
you want your email to look like and the third one is the public key That's 
everything you need to send over an email Finally we want to reset the form 
after submission So I'll bring this up right here And that's more or less it This should 
successfully send an email So what do you say that we go ahead and test it out 
i've already filled in some information right here But the question is where are we actually taking in this form data and 
passing it into the send form See the way in which it works is first you pass the service ID then the template ID then 
the form and finally the options So right here after your second parameter 
you want to pass in the form data Specifically you want to pass a reference to the form So let's create a 
new reference right at the top by saying const form ref is equal to use ref 
coming from react at the start set to null And we can attach this reference to 
a form So just scroll down to where we start with our form and give this form a 
ref equal to form ref And now right here we can pass formre 
ref.curren which will contain all the information from the form So reload the 
app Head over to the contact me Let's say that your employer is contacting you 
from johndo.com and they're going to say you're hired Finally click send a message It 
says sending And what happened it looks like I passed the wrong template ID So back 
on email.js maybe I didn't proceed with fully completing my form I'll click 
create Oh yeah I didn't save it So I'll have to head over to settings copy the 
ID one more time read it to my ENVs right here and 
then don't forget to click save Yep this is what matters Now if you reload the 
page scroll to the contact and try to send out the email 
the autofill also works We're going to say you're hired and send the message 
Sending You can see that the form actually get cleared which means that it successfully got sent And if you head 
over to your email provider you'll see a new email saying "A message by Adrian has been received Respond at your 
earliest convenience You are hired." And the only problem that we have right now is that we don't know who to respond to 
What is the email that they left so if you head over to your template content alongside displaying the name and the 
message right below we can also render the email So just use a double curly 
brace and render the email variable right here Save it And if we once again 
try to send out an email this time on the big screen 
Testing The email arrives in a second And now it also contains the email that 
you can respond to Perfect We've got it all covered So to finish it off let's 
also add a simple footer because this form and the 3D model really need some breathing room at the bottom of the 
screen We'll do something super simple that looks like this where people can maybe 
 
read a bit more about us I would suggest that you point this to your blog and then go ahead and implement it Write 
about your learning journey because you don't really have terms and conditions Also put your professional profiles Okay 
i wouldn't actually advise going for Instagram or Facebook but X or LinkedIn 
or the links to your blogs Totally go for that and then put your name here To implement this footer I'll head over 
into the sections folder and create a new file called 
footer.jsx run rafce and imported right within our app by simply rendering a 
self-closing footer component We can then head over into it and wrap it in a 
semantic footer tag that'll have a class name of footer 
which will automatically give it some room to breathe Within it we can render a div that'll have a class name equal to 
footer-container And then within it another div that'll have a class name of 
flex flex- call and justify center within which we can display an anchor 
tag with an href pointing to just forward slash 
And this one can say visit my blog So if you really want 
to take this portfolio further try implementing a blog section as well or point to your medium blog maybe Below 
that div render another div This one will have a class name of 
socials And here you can map over your social images by saying social images 
map where you get each individual image So I can say img and for each one render 
an anchor tag which will then render an image with a source of img img path If you do that 
you should be able to see those four icons and these social images are coming from constants So you can totally change 
their name or even delete or add some new platforms that you're using And of 
course put your URL right there Let's give this anchor tag a class 
name equal to icon a target of underscore blank so it 
opens up within a new tab an href pointing to the img URL and since we're 
mapping over it also a key of img URL because it's unique Finally we can head 
below this div of socials and add another div for the right side of the footer with a class name of flex flex- 
call justify-c center within which we can have a p tag 
that'll have a class name equal to text-c center and on medium devices 
text- end and within it we can display that copyright sign and Then create a 
new date and get the current full year So that way even the next year this will 
be updated You can put your name right here and say something like all rights 
reserved Well I give you the rights right here to use this as a portfolio Now we could also align this visit my 
blog to the center So I'll say items center There we go So it looks good on 
mobile devices But if we expand it it gives just the right amount of space 
right here for desktop devices too But here I actually want to keep it on the 
left corner So I can say on medium devices and larger items 
start which is going to put it here but on mobile it'll be centered And that 
brings us to the end of the footer and almost to the end of the entire build One thing that I don't like right now is 
that we haven't changed the favicon nor the title I want it to look something a bit more like this So to change it head 
over to the index.html file right here and change the title to something like your name 
and m dash semicolon Do two of these and then say 
portfolio This will form this nice Adrian longline portfolio Also we just 
have to replace this favicon which is the default V1 which everybody has with the updated favicon So point the path of 
the link to forward slash images/fav.png If you save it you'll see 
my initials right here But of course I don't want you to use my initials So on 
the right side of the design I've prepared this part right here that says icons where you can change some of the 
logos or some other aspects of your portfolio For example you can change your initials right here So to be able 
to change it you'll have to duplicate it So just say duplicate to your drafts and then you'll be able to edit and export 
this icon Once you do that you can just put it to your public folder point to it right here and then it'll update for 
your portfolio And with that said we are done with building our amazing portfolio 
So the last step we have to do is to get it deployed to the internet so we can share it with 
 
everyone And we're back on Hostinger's dashboard I already got the domain name 
with my hosting And if you purchased and selected yours you should be able to see a page that looks something like this If 
you didn't get the hosting or the domain name yet you can do that by clicking the link down in the description Once you 
find your website or your domain name click file manager Then head over into 
your public HTML and delete the default PHP because here we're going to upload 
our website So go back to your application stop it from running and close all the terminals and just run mpm 
run build This will build an optimized production build of your application 
There we go Took just 3 seconds If you check out your project you'll notice that there's a new dist as in 
distribution folder that contains everything about your website So rightclick it and open it up within your 
finder or file explorer Then go into it select everything within it and drag and 
drop it right here within your H panel There we go Now close the H panel You'll 
be redirected back to your domain and click on it And that's it It loaded 
instantly with the proper favicon title and even an HTTPS certificate Just try 
reloading it and see how fast it is And take a second to admire everything 
you've built Having this custom domain name SSL certificate and fast load times 
definitely makes you stand out in the crowd And let's also test out our email functionality test from 
production I'll go ahead and send it And I got it in a second Perfect And there 
you have it You have successfully built your own 3D personal 
portfolio Congratulations Oh yeah and let's not forget that it is fully mobile 
responsive I mean just look at it with these nice looking timeline 
animations It is just amazing Since you came to the end of this one I know you 
love 3JS and I know you want to get better at it So the only next step that makes sense for you right now after 
watching this video is to check out the ultimate 3GS course live right now on 
GSMy Pro Here we'll dive super deep into every single 3JS property that we 
covered in this video and so much more from different geometries planes 
modifying the 3D world and lights and shadows and so much more We'll explore 
everything that 3JS has to offer So check it out The link is in the description With that said thank you so 
much for watching and I'll see you on JS Mastery 
 - Generated with https://kome.ai