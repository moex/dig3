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

#ifndef H_Work_reloj_nadadezurdos_H
#define H_Work_reloj_nadadezurdos_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_reloj_nadadezurdos: public HSim__s6 {
public:

    HSim__s1 SE[6];

    HSim__s1 SA[7];
  char t84;
HSimConstraints *c85;
    Work_reloj_nadadezurdos(const char * name);
    ~Work_reloj_nadadezurdos();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_reloj_nadadezurdos(const char *name);

#endif
