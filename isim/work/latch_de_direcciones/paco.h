////////////////////////////////////////////////////////////////////////////////
//   ____  ____   
//  /   /\/   /  
// /___/  \  /   
// \   \   \/  
//  \   \        Copyright (c) 2003-2004 Xilinx, Inc.
//  /   /        All Right Reserved. 
// /---/   /\     
// \   \  /  \  
//  \___\/\___\
////////////////////////////////////////////////////////////////////////////////

#ifndef H_Work_latch_de_direcciones_paco_H
#define H_Work_latch_de_direcciones_paco_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_latch_de_direcciones_paco: public HSim__s6 {
public:

    HSim__s1 SE[4];

HSimConstraints *c0;
  char *t1;
    Work_latch_de_direcciones_paco(const char * name);
    ~Work_latch_de_direcciones_paco();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_latch_de_direcciones_paco(const char *name);

#endif
