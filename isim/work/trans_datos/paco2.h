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

#ifndef H_Work_trans_datos_paco2_H
#define H_Work_trans_datos_paco2_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_trans_datos_paco2: public HSim__s6 {
public:

    HSim__s1 SE[4];

  char t0;
  char *t1;
    Work_trans_datos_paco2(const char * name);
    ~Work_trans_datos_paco2();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_trans_datos_paco2(const char *name);

#endif
