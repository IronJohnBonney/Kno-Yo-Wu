//
//  WuTangClan.swift
//  Kno-Yo-Wu
//
//  Created by Stephen Looney on 6/23/16.
//  Copyright © 2016 SpaceBoat Development LLC. All rights reserved.
//

import Foundation

struct WuTang {
    let name:String
    let alias:String
    let age:Int
    let image:String
    let description:String
    
    static func all() -> [WuTang] {
        return [
            WuTang(name: "RZA", alias:"Ruler Zig-Zag-Zig Allah", age:46, image: "RZA", description: "The master of the Wu-Tang Clan, the beatsmith himself, Robert Fitzgerald “RZA” Diggs came to define the Wu sound throughout its rise. He has produced almost all of Wu-Tang Clan's albums as well as many Wu-Tang solo and affiliate projects. He is a cousin of the late group-mate, Ol' Dirty Bastard and GZA (who also formed the group with RZA). He has also released solo albums under the alter-ego Bobby Digital, along with executive producing credits for side projects."),
            
            WuTang(name: "GZA", alias:"The Genious", age:49, image: "GZA", description: "A founding member of the hip hop group the Wu-Tang Clan, GZA is known as the group's 'spiritual head', being both the oldest and the first within the group to receive a record deal. He has appeared on his fellow Clan members' solo projects, and since the release of his critically acclaimed solo album Liquid Swords (1995), he has maintained a successful solo career."),
            
            WuTang(name: "Ol'Dirty Bastard", alias:"Dirt McGirt", age:35, image: "OlDirty", description: "Russell Tyrone Jones (November 15, 1968 – November 13, 2004), better known under his stage name Ol' Dirty Bastard (or ODB), was an American rapper, producer and one of the founding members of the Wu-Tang Clan. ODB was often noted for his trademark microphone techniques and his 'outrageously profane, free-associative rhymes delivered in a distinctive half-rapped, half-sung style'. His stage name was derived from the 1980 martial arts film Ol' Dirty and the Bastard (also called An Old Kung Fu Master, starring Yuen Siu-tien)."),
            
            WuTang(name: "Inspectah Deck", alias:"I Bomb Atomically...", age:45, image: "Inspectah", description: "Jason Hunter (born July 6, 1970) aka Inspectah Deck, is an American rapper, producer, and member of the Wu-Tang Clan. He has acquired critical praise for his intricate lyricism, and for his verses on many of the group's most revered songs (see: 'Triumph'). He has grown to become a producer in his own right, taking up tracks for fellow clansmen and his own projects."),
            
            WuTang(name: "Raekwon", alias:"The Chef", age:46, image: "Raekwon", description: "Corey Woods, or Raekwon, is a rapper and a member of the Wu-Tang Clan. He released his solo debut, Only Built 4 Cuban Linx… in 1995, and has since recorded four solo albums, as well as work with Wu-Tang and an extensive amount of guest contributions with other hip hop artists. Raekwon is often cited as one of the pioneers of the Mafioso rap sub-genre. In 2007, The editors of About.com placed him on their list of the Top 50 MCs of Our Time. The Miami New Times described Raekwon’s music as being street epics that are 'straightforward yet linguistically rich universes not unlike a gangsta Illiad.'"),
            
            WuTang(name: "U-God", alias:"Golden Arms", age:45, image: "UGOD", description: "Lamont Jody Hawkins[1] (born October 11, 1970),[2] better known as U-God (short for Universal God), is an American rapper and member of the hip hop collective, Wu-Tang Clan. He has been with the group since its inception, and is known for having a deep, rhythmic flow that can alternate between being gruff or smooth."),
            
            WuTang(name: "Ghostface Killah", alias:"Tony Starks", age:46, image: "Ghostface", description: "Ghostface Killah, born Dennis Coles, is a Staten Island rapper and member of the Wu-Tang Clan, known for both his work with Wu-Tang and his extensive solo career. Ghostface is known for his dense flow style, his stream-of-consciousness storytelling, and his emotive delivery. Ghostface was also the co-star of Raekwon’s critically acclaimed 1995 Only Built 4 Cuban Linx… album, and followed it soon with his own 1996 solo debut, Ironman His 2000 sophomore album Supreme Clientele is widely regarded as one of the best Wu Tang solo projects. Since then, he’s continued to evolve, from his gambino-themed 2006 album Fishscale, to his collaboration with BADBADNOTGOOD, 2015’s Sour Soul. His name is taken from the villain in 1979 martial arts film Mystery of Chessboxing."),
            
            WuTang(name: "Method Man", alias:"Johnny Blaze", age:45, image: "MethodMan", description: "Clifford Smith (born March 2,[2] 1971), better known by his stage name Method Man, is an American rapper, record producer, and actor. He took his stage name from the 1979 film Method Man. He is perhaps best known as a member of the East Coast hip hop collective Wu-Tang Clan. He is also one half of the hip hop duo Method Man & Redman. In 1996, he won a Grammy Award for Best Rap Performance by a Duo or Group, for 'I'll Be There for You/You're All I Need to Get By', with American R&B singer-songwriter Mary J. Blige"),
            
            WuTang(name: "Cappadonna", alias:"Vocabulary 'donna", age:46, image: "Cappadonna", description: "The 'unofficial official' tenth member of the Wu-Tang Clan, Cappadonna has been there since the beginning. During the formative years of the Clan, Cappa was slated to become a core member until he landed behind bars and was replaced by the Method Man. Like other members of the group, Cappa’s name also has a hidden meaning behind an acronym. Consider All Poor People Acceptable Don’t Oppress Nor Neglect Anyone is the full meaning behind Cappachino’s name. First appearing on Ghostface Killah’s classic joint “Ice Cream,” Cappadonna has gone on to drop nine solo albums and numerous other collaborations."),
            
            WuTang(name: "Masta Killa", alias:"Noodles", age:46, image: "MastaKilla", description:"Jamel Irief (born Elgin Turner; August 18, 1969), better known by his stage name Masta Killa, is an American rapper and member of the Wu-Tang Clan.[2] Though one of the lesser-known members of the group (he was featured on only one track on their 1993 debut album Enter the Wu-Tang (36 Chambers)), he has been prolific on Clan group albums and solo projects since the mid-1990s. He released his debut album No Said Date in 2004 to positive reviews, and has since released two additional albums.")
        ]

    }
    
}
