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
  char *t0;
HSimConstraints *c1;
HSimConstraints *c2;
  char *t3;
HSimConstraints *c4;
  char *t5;
  char t6;
  char t7;
  char t8;
  char t9;
  char t10;
  char t11;
  char t12;
  char t13;
  char t14;
HSimConstraints *c15;
HSimConstraints *c16;
  char *t17;
HSimConstraints *c18;
HSimConstraints *c19;
  char *t20;
HSimConstraints *c21;
  char *t22;
HSimConstraints *c23;
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
