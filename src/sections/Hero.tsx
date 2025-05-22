
import React from 'react'

import { words, type Word } from '../constants'

interface HeroProps {
  
  
}

function Hero({}: HeroProps) {
  
  
  const sectionId: string = "hero";
  
  return (
    
    
    
    
    <section id={sectionId} className="relative overflow-hidden">
        {}
        <div className='absolute top-0 left-0 z-10'>
            <img 
              src="/images/bg.png" 
              alt="background"
              
              
            />
        </div>

        {}
        <div className='hero-layout'>
           {}
           <header className='flex flex-col justify-center md:w-full w-screen md:px-20 px-5'>
              {}
              <div className="flex flex-col gap-7">
                {}
                <div className="hero-text">
                  <h1>
                    Shaping
                    {}
                    <span className="slide">
                      {}
                      <span className="wrapper">
                        {}
                        {words.map((word: Word, index: number) => (
                          <span key={index}>
                            {word.text}
                            <img src={word.imgPath} alt={word.text} className="inline-icon" />
                          </span>
                        ))}
                      </span>
                    </span>
                  </h1>
                </div>
              </div>
           </header>
           {}
        </div>
    </section>
  )
}

export default Hero