$fn=48;

/*
Croc name charms
Version 6, March 2023
Written by MC Geisler (mcgenki at gmail dot com)

This is a configurable text kitchen magnet, consisting of separate extruded letters. Use the variables to get the text you need.

Have fun!

License: Attribution-NonCommercial-ShareAlike 4.0 International 
(CC BY-NC-SA 4.0) https://creativecommons.org/licenses/by-nc-sa/4.0/

You are free to:
    Share — copy and redistribute the material in any medium or format
    Adapt — remix, transform, and build upon the material
    The licensor cannot revoke these freedoms as long as you follow the license terms.

*/

part="both"; //[both, name, button]

//Set the text to render
textstring="Bada";

//Font name, e.g. "Libration Sans", "Aldo", depends on what is available on the platform. In the customizer,choose from about 700 Google Fonts. For an overview please refer: http://www.google.com/fonts
fontname="Anton"; //[ABeeZee,Abel,Abril Fatface,Aclonica,Acme,Actor,Adamina,Advent Pro,Aguafina Script,Akronim,Aladin,Aldrich,Alef,Alegreya,Alegreya Sans,Alegreya Sans SC,Alegreya SC,Alex Brush,Alfa Slab One,Alice,Alike,Alike Angular,Allan,Allerta,Allerta Stencil,Allura,Almendra,Almendra Display,Almendra SC,Amarante,Amaranth,Amatic SC,Amethysta,Amiri,Anaheim,Andada,Andika,Angkor,Annie Use Your Telescope,Anonymous Pro,Antic,Antic Didone,Antic Slab,Anton,Arapey,Arbutus,Arbutus Slab,Architects Daughter,Archivo Black,Archivo Narrow,Arimo,Arizonia,Armata,Artifika,Arvo,Asap,Asset,Astloch,Asul,Atomic Age,Aubrey,Audiowide,Autour One,Average,Average Sans,Averia Gruesa Libre,Averia Libre,Averia Sans Libre,Averia Serif Libre,Bad Script,Balthazar,Bangers,Basic,Battambang,Baumans,Bayon,Belgrano,Belleza,BenchNine,Bentham,Berkshire Swash,Bevan,Bigelow Rules,Bigshot One,Bilbo,Bilbo Swash Caps,Bitter,Black Ops One,Bokor,Bonbon,Boogaloo,Bowlby One,Bowlby One SC,Brawler,Bree Serif,Bubblegum Sans,Bubbler One,Buda,Buenard,Butcherman,Butterfly Kids,Cabin,Cabin Condensed,Cabin Sketch,Caesar Dressing,Cagliostro,Calligraffitti,Cambay,Cambo,Candal,Cantarell,Cantata One,Cantora One,Capriola,Cardo,Carme,Carrois Gothic,Carrois Gothic SC,Carter One,Caudex,Cedarville Cursive,Ceviche One,Changa One,Chango,Chau Philomene One,Chela One,Chelsea Market,Chenla,Cherry Cream Soda,Cherry Swash,Chewy,Chicle,Chivo,Cinzel,Cinzel Decorative,Clicker Script,Coda,Coda Caption,Codystar,Combo,Comfortaa,Coming Soon,Concert One,Condiment,Content,Contrail One,Convergence,Cookie,Copse,Corben,Courgette,Cousine,Coustard,Covered By Your Grace,Crafty Girls,Creepster,Crete Round,Crimson Text,Croissant One,Crushed,Cuprum,Cutive,Cutive Mono,Damion,Dancing Script,Dangrek,Dawning of a New Day,Days One,Dekko,Delius,Delius Swash Caps,Delius Unicase,Della Respira,Denk One,Devonshire,Dhurjati,Didact Gothic,Diplomata,Diplomata SC,Domine,Donegal One,Doppio One,Dorsa,Dosis,Dr Sugiyama,Droid Sans,Droid Sans Mono,Droid Serif,Duru Sans,Dynalight,Eagle Lake,Eater,EB Garamond,Economica,Ek Mukta,Electrolize,Elsie,Elsie Swash Caps,Emblema One,Emilys Candy,Engagement,Englebert,Enriqueta,Erica One,Esteban,Euphoria Script,Ewert,Exo,Exo 2,Expletus Sans,Fanwood Text,Fascinate,Fascinate Inline,Faster One,Fasthand,Fauna One,Federant,Federo,Felipa,Fenix,Finger Paint,Fira Mono,Fira Sans,Fjalla One,Fjord One,Flamenco,Flavors,Fondamento,Fontdiner Swanky,Forum,Francois One,Freckle Face,Fredericka the Great,Fredoka One,Freehand,Fresca,Frijole,Fruktur,Fugaz One,Gabriela,Gafata,Galdeano,Galindo,Gentium Basic,Gentium Book Basic,Geo,Geostar,Geostar Fill,Germania One,GFS Didot,GFS Neohellenic,Gidugu,Gilda Display,Give You Glory,Glass Antiqua,Glegoo,Gloria Hallelujah,Goblin One,Gochi Hand,Gorditas,Goudy Bookletter 1911,Graduate,Grand Hotel,Gravitas One,Great Vibes,Griffy,Gruppo,Gudea,Gurajada,Habibi,Halant,Hammersmith One,Hanalei,Hanalei Fill,Handlee,Hanuman,Happy Monkey,Headland One,Henny Penny,Herr Von Muellerhoff,Hind,Holtwood One SC,Homemade Apple,Homenaje,Iceberg,Iceland,IM Fell Double Pica,IM Fell Double Pica SC,IM Fell DW Pica,IM Fell DW Pica SC,IM Fell English,IM Fell English SC,IM Fell French Canon,IM Fell French Canon SC,IM Fell Great Primer,IM Fell Great Primer SC,Imprima,Inconsolata,Inder,Indie Flower,Inika,Irish Grover,Istok Web,Italiana,Italianno,Jacques Francois,Jacques Francois Shadow,Jim Nightshade,Jockey One,Jolly Lodger,Josefin Sans,Josefin Slab,Joti One,Judson,Julee,Julius Sans One,Junge,Jura,Just Another Hand,Just Me Again Down Here,Kalam,Kameron,Kantumruy,Karla,Karma,Kaushan Script,Kavoon,Kdam Thmor,Keania One,Kelly Slab,Kenia,Khand,Khmer,Khula,Kite One,Knewave,Kotta One,Koulen,Kranky,Kreon,Kristi,Krona One,La Belle Aurore,Laila,Lakki Reddy,Lancelot,Lateef,Lato,League Script,Leckerli One,Ledger,Lekton,Lemon,Liberation Sans,Libre Baskerville,Life Savers,Lilita One,Lily Script One,Limelight,Linden Hill,Lobster,Lobster Two,Londrina Outline,Londrina Shadow,Londrina Sketch,Londrina Solid,Lora,Love Ya Like A Sister,Loved by the King,Lovers Quarrel,Luckiest Guy,Lusitana,Lustria,Macondo,Macondo Swash Caps,Magra,Maiden Orange,Mako,Mallanna,Mandali,Marcellus,Marcellus SC,Marck Script,Margarine,Marko One,Marmelad,Martel Sans,Marvel,Mate,Mate SC,Maven Pro,McLaren,Meddon,MedievalSharp,Medula One,Megrim,Meie Script,Merienda,Merienda One,Merriweather,Merriweather Sans,Metal,Metal Mania,Metamorphous,Metrophobic,Michroma,Milonga,Miltonian,Miltonian Tattoo,Miniver,Miss Fajardose,Modak,Modern Antiqua,Molengo,Molle,Monda,Monofett,Monoton,Monsieur La Doulaise,Montaga,Montez,Montserrat,Montserrat Alternates,Montserrat Subrayada,Moul,Moulpali,Mountains of Christmas,Mouse Memoirs,Mr Bedfort,Mr Dafoe,Mr De Haviland,Mrs Saint Delafield,Mrs Sheppards,Muli,Mystery Quest,Neucha,Neuton,New Rocker,News Cycle,Niconne,Nixie One,Nobile,Nokora,Norican,Nosifer,Nothing You Could Do,Noticia Text,Noto Sans,Noto Serif,Nova Cut,Nova Flat,Nova Mono,Nova Oval,Nova Round,Nova Script,Nova Slim,Nova Square,NTR,Numans,Nunito,Odor Mean Chey,Offside,Old Standard TT,Oldenburg,Oleo Script,Oleo Script Swash Caps,Open Sans,Open Sans Condensed,Oranienbaum,Orbitron,Oregano,Orienta,Original Surfer,Oswald,Over the Rainbow,Overlock,Overlock SC,Ovo,Oxygen,Oxygen Mono,Pacifico,Paprika,Parisienne,Passero One,Passion One,Pathway Gothic One,Patrick Hand,Patrick Hand SC,Patua One,Paytone One,Peddana,Peralta,Permanent Marker,Petit Formal Script,Petrona,Philosopher,Piedra,Pinyon Script,Pirata One,Plaster,Play,Playball,Playfair Display,Playfair Display SC,Podkova,Poiret One,Poller One,Poly,Pompiere,Pontano Sans,Port Lligat Sans,Port Lligat Slab,Prata,Preahvihear,Press Start 2P,Princess Sofia,Prociono,Prosto One,PT Mono,PT Sans,PT Sans Caption,PT Sans Narrow,PT Serif,PT Serif Caption,Puritan,Purple Purse,Quando,Quantico,Quattrocento,Quattrocento Sans,Questrial,Quicksand,Quintessential,Qwigley,Racing Sans One,Radley,Rajdhani,Raleway,Raleway Dots,Ramabhadra,Ramaraja,Rambla,Rammetto One,Ranchers,Rancho,Ranga,Rationale,Ravi Prakash,Redressed,Reenie Beanie,Revalia,Ribeye,Ribeye Marrow,Righteous,Risque,Roboto,Roboto Condensed,Roboto Slab,Rochester,Rock Salt,Rokkitt,Romanesco,Ropa Sans,Rosario,Rosarivo,Rouge Script,Rozha One,Rubik Mono One,Rubik One,Ruda,Rufina,Ruge Boogie,Ruluko,Rum Raisin,Ruslan Display,Russo One,Ruthie,Rye,Sacramento,Sail,Salsa,Sanchez,Sancreek,Sansita One,Sarina,Sarpanch,Satisfy,Scada,Scheherazade,Schoolbell,Seaweed Script,Sevillana,Seymour One,Shadows Into Light,Shadows Into Light Two,Shanti,Share,Share Tech,Share Tech Mono,Shojumaru,Short Stack,Siemreap,Sigmar One,Signika,Signika Negative,Simonetta,Sintony,Sirin Stencil,Six Caps,Skranji,Slabo 13px,Slabo 27px,Slackey,Smokum,Smythe,Sniglet,Snippet,Snowburst One,Sofadi One,Sofia,Sonsie One,Sorts Mill Goudy,Source Code Pro,Source Sans Pro,Source Serif Pro,Special Elite,Spicy Rice,Spinnaker,Spirax,Squada One,Sree Krushnadevaraya,Stalemate,Stalinist One,Stardos Stencil,Stint Ultra Condensed,Stint Ultra Expanded,Stoke,Strait,Sue Ellen Francisco,Sunshiney,Supermercado One,Suranna,Suravaram,Suwannaphum,Swanky and Moo Moo,Syncopate,Tangerine,Taprom,Tauri,Teko,Telex,Tenali Ramakrishna,Tenor Sans,Text Me One,The Girl Next Door,Tienne,Timmana,Tinos,Titan One,Titillium Web,Trade Winds,Trocchi,Trochut,Trykker,Tulpen One,Ubuntu,Ubuntu Condensed,Ubuntu Mono,Ultra,Uncial Antiqua,Underdog,Unica One,UnifrakturCook,UnifrakturMaguntia,Unkempt,Unlock,Unna,Vampiro One,Varela,Varela Round,Vast Shadow,Vesper Libre,Vibur,Vidaloka,Viga,Voces,Volkhov,Vollkorn,Voltaire,VT323,Waiting for the Sunrise,Wallpoet,Walter Turncoat,Warnes,Wellfleet,Wendy One,Wire One,Yanone Kaffeesatz,Yellowtail,Yeseva One,Yesteryear,Zeyada]

//Shift the font up/down to connect i and j dots? Select "no" if you have no i or j in your text.
do_shift_font="automatic"; //[automatic,yes,no]

//Set font size in mm
textsize=13; 

th_bottom=3;
dia_bottom=20.5;
len_throughhole=6;
dia_pin=8.5;
dia_lockpin=dia_pin*.5;
out_lockpin=dia_pin*.05;
th_topper=dia_lockpin;

th_flange=th_bottom/2;
dia_flange=dia_bottom-th_flange*2;

wiggle=.2;
topaddwiggle=.3;
shell=.8;

//Connecting bar height (extrusion in print direction) in percent of the text height
baseheight=dia_lockpin+wiggle+shell+topaddwiggle;

//Text height (extrusion) in mm
textheight=baseheight+.8;

//Connecting bar thickness in percent of the font size
basethickness_percent=0.3;
basethickness=textsize*basethickness_percent;

//Amount to shift the font up/down to connect i and j dots for printing. 
font_catch_diacritical_sign=2.3; 

//Only for a rounded base: Base increase size to make letters meet, in percent of the textsize
base_radius_add_percent=0.05;
base_radius_add=textsize*base_radius_add_percent;

shift_locker=textsize*.45;


/* [Hidden] */
//-------------------------------------------------------------------------------



module writetext(textstr, sizeit)
{
    text(textstr,size=sizeit,font=fontname,halign="center",valign="baseline");
}


module RiseText(textstr, textsize,textheight, scale) 
{ 
    minkowski()
    {
        union()
        {
            linear_extrude(height=.0001,convexity = 32)
                writetext(textstr, textsize);
        }
        
        //rotate([0,180,0])
            cylinder(h=textheight, r1=0, r2=scale, center=true, $fn=8);
    }
}

   

//----------------------------------------------------------------
//writeOnCyl(radius,text,fontsize);

  
module bottompin(adder,topadder)
{
    //adder=1;
    dia_pin_adder=dia_pin+2*adder;
    dia_lockpin_adder=dia_lockpin+2*adder;
    h_lockpin_adder=2*out_lockpin+dia_pin_adder;
    
    angle=( adder==0 ? atan(out_lockpin/(dia_lockpin/2)) : 0 );
    
    
    //bottom pole and button
    cylinder(d=dia_pin_adder,h=th_bottom+len_throughhole+th_topper+adder+topadder);
    cylinder(d1=dia_flange, d2=dia_bottom, h=th_flange);
    translate([0,0,th_flange])
        cylinder(d2=dia_flange, d1=dia_bottom, h=th_flange);

    //locking mechanism
    translate([0,0,th_bottom+len_throughhole+dia_lockpin/2])
        rotate([90,0,90])
            difference()
            {
                dummy=dia_lockpin_adder;
                cylinder(d=dia_lockpin_adder,h=h_lockpin_adder,center=true);
                
                translate([0,0,h_lockpin_adder/2])
                    rotate([-angle,0,0])
                        translate([0,0,dummy/2])
                            cube([dia_lockpin_adder+1,dia_lockpin_adder*2,dummy],center=true);

                translate([0,0,-h_lockpin_adder/2])
                    rotate([angle,0,0])
                        translate([0,0,-dummy/2])
                            cube([dia_lockpin_adder+1,dia_lockpin_adder*2,dummy],center=true);
                    
            }
            
}

if (part=="button" || part=="both")
translate([0,dia_bottom*1.5,0])
    bottompin(0,0);
    
//----------------------------------------------------------------




iorj = [ for (i = [0 : len(textstring) - 1]) if (textstring[i]=="i" || textstring[i]=="j") 1 ];

dummy_cutoutlen=len(textstring)*textsize;



module RiseText(textstr, textsize,textheight) 
{

    shift_button_down=-th_bottom-len_throughhole;//+wiggle;
    
    difference()
    {
        union()
        {
                
            linear_extrude(height=textheight,convexity = 10)
                writetext(textstr, textsize);

            //Add  holder
            translate([0,shift_locker,0])
            difference()
            {   
                translate([0,0,shift_button_down])
                    bottompin(wiggle+shell,topaddwiggle);
                    
                translate([-dummy_cutoutlen/2,-dummy_cutoutlen/2,-dummy_cutoutlen/2])
                    cube([dummy_cutoutlen,dummy_cutoutlen,dummy_cutoutlen/2]);
            }

            //base line to connect
            linear_extrude(height=baseheight, twist=0, slices=1, $fn=32) 
                hull()
                    intersection()
                    {
                        writetext(textstr, textsize);
                        
                        //translate([0,-textsize/2+basethickness/2+base_offset,0])
                        translate([0,basethickness/2,0])
                           square([dummy_cutoutlen,basethickness],center=true);
                    }
                  
            if ( (do_shift_font=="automatic" && iorj[0]==1) || do_shift_font=="yes")  
            {
                //connect i and j dots
                assign(delta=textsize/30*font_catch_diacritical_sign)
                   intersection()
                   {
                       //connect the dots but maybe too much in other locations
                       linear_extrude(height=baseheight/2,convexity = 10)
                            offset(delta=-delta)   
                                offset(delta=delta)
                                    writetext(textstr, textsize);
                   
                       //connect only vertical parts by shifting
                       linear_extrude(height=baseheight/2,convexity = 10)
                           for ( i = [-1 : 1] )
                               translate([0,i*delta,0])
                                    writetext(textstr, textsize);
                   }
            }


            linear_extrude(height=baseheight, twist=0, slices=1, $fn=32) 
                offset(r = base_radius_add) 
                {
                    writetext(textstr, textsize);
                }
        }
        
        //subtract magnet
        translate([0,shift_locker,shift_button_down])
            #bottompin(wiggle,topaddwiggle);
//MagnetHolder(magnettype,"subtract");
    }
}

if (part=="name" || part=="both")
    RiseText(textstring,textsize,textheight);
