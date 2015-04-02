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

#ifndef H_Work_reg_de_paginacion_fermin_H
#define H_Work_reg_de_paginacion_fermin_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_reg_de_paginacion_fermin: public HSim__s6 {
public:

    HSim__s1 SE[5];

    HSim__s1 SA[3];
  char *t16;
HSimConstraints *c17;
HSimConstraints *c18;
  char *t19;
HSimConstraints *c20;
  char *t21;
  char t22;
  char t23;
  char t24;
  char t25;
  char t26;
  char t27;
  char t28;
  char t29;
  char t30;
HSimConstraints *c31;
    Work_reg_de_paginacion_fermin(const char * name);
    ~Work_reg_de_paginacion_fermin();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_reg_de_paginacion_fermin(const char *name);

#endif
