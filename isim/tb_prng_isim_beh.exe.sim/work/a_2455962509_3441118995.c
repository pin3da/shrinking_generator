/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x54af6ca1 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/pin3da/Repos/shrinking_generator/shrinking_generator.vhd";



static void work_a_2455962509_3441118995_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    unsigned char t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4096);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 128U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t3 = (t10 == 127);
    if (t3 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB8;

LAB9:
LAB6:
LAB3:    t1 = (t0 + 3872);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 3968);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 4032);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(45, ng0);
    t1 = xsi_get_transient_memory(128U);
    memset(t1, 0, 128U);
    t2 = t1;
    memset(t2, (unsigned char)2, 128U);
    t5 = (t0 + 4096);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 128U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 4032);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t11 = *((unsigned char *)t5);
    t1 = (t0 + 1992U);
    t6 = *((char **)t1);
    t10 = *((int *)t6);
    t12 = (t10 - 127);
    t13 = (t12 * -1);
    t14 = (1 * t13);
    t15 = (0U + t14);
    t1 = (t0 + 4096);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t16 = *((char **)t9);
    *((unsigned char *)t16) = t11;
    xsi_driver_first_trans_delta(t1, t15, 1, 0LL);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t12 = (t10 + 1);
    t1 = (t0 + 3968);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t12;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

}

static void work_a_2455962509_3441118995_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(56, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 4160);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 128U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3888);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2455962509_3441118995_init()
{
	static char *pe[] = {(void *)work_a_2455962509_3441118995_p_0,(void *)work_a_2455962509_3441118995_p_1};
	xsi_register_didat("work_a_2455962509_3441118995", "isim/tb_prng_isim_beh.exe.sim/work/a_2455962509_3441118995.didat");
	xsi_register_executes(pe);
}
