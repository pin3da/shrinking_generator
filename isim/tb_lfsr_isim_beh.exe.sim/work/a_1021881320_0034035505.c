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
static const char *ng0 = "/home/pin3da/Repos/shrinking_generator/lfsr.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_16439989832805790689_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989833707593767_503743352(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1021881320_0034035505_p_0(char *t0)
{
    char t20[16];
    char t21[16];
    char t22[16];
    char t24[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    char *t12;
    int t13;
    int t14;
    char *t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t23;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = (0 - 15);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 2048U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    *((unsigned char *)t8) = t7;
    xsi_set_current_line(22, ng0);
    t3 = (16 - 1);
    t1 = (t0 + 5871);
    *((int *)t1) = 0;
    t2 = (t0 + 5875);
    *((int *)t2) = t3;
    t10 = 0;
    t11 = t3;

LAB2:    if (t10 <= t11)
        goto LAB3;

LAB5:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t16 = (t7 == (unsigned char)3);
    if (t16 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t7 != 0)
        goto LAB10;

LAB11:
LAB8:    t1 = (t0 + 3712);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(23, ng0);
    t8 = (t0 + 2048U);
    t9 = *((char **)t8);
    t7 = *((unsigned char *)t9);
    t8 = (t0 + 2168U);
    t12 = *((char **)t8);
    t8 = (t0 + 5871);
    t13 = *((int *)t8);
    t14 = (t13 - 15);
    t4 = (t14 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, *((int *)t8));
    t5 = (1U * t4);
    t6 = (0 + t5);
    t15 = (t12 + t6);
    *((unsigned char *)t15) = t7;

LAB4:    t1 = (t0 + 5871);
    t10 = *((int *)t1);
    t2 = (t0 + 5875);
    t11 = *((int *)t2);
    if (t10 == t11)
        goto LAB5;

LAB6:    t3 = (t10 + 1);
    t10 = t3;
    t8 = (t0 + 5871);
    *((int *)t8) = t10;
    goto LAB2;

LAB7:    xsi_set_current_line(26, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t8 = t1;
    memset(t8, (unsigned char)2, 16U);
    t3 = (0 - 15);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t9 = (t8 + t5);
    *((unsigned char *)t9) = (unsigned char)3;
    t12 = (t0 + 3808);
    t15 = (t12 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t1, 16U);
    xsi_driver_first_trans_fast(t12);
    goto LAB8;

LAB10:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1512U);
    t8 = *((char **)t2);
    t3 = (16 - 1);
    t4 = (15 - t3);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t8 + t6);
    t12 = ((IEEE_P_2592010699) + 4000);
    t15 = (t22 + 0U);
    t17 = (t15 + 0U);
    *((int *)t17) = 15;
    t17 = (t15 + 4U);
    *((int *)t17) = 1;
    t17 = (t15 + 8U);
    *((int *)t17) = -1;
    t10 = (1 - 15);
    t23 = (t10 * -1);
    t23 = (t23 + 1);
    t17 = (t15 + 12U);
    *((unsigned int *)t17) = t23;
    t9 = xsi_base_array_concat(t9, t21, t12, (char)99, (unsigned char)2, (char)97, t2, t22, (char)101);
    t17 = (t0 + 2168U);
    t18 = *((char **)t17);
    t17 = (t0 + 5792U);
    t19 = (t0 + 1928U);
    t25 = *((char **)t19);
    t19 = (t0 + 5776U);
    t26 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t24, t18, t17, t25, t19);
    t27 = ieee_p_2592010699_sub_16439989833707593767_503743352(IEEE_P_2592010699, t20, t9, t21, t26, t24);
    t28 = (t20 + 12U);
    t23 = *((unsigned int *)t28);
    t29 = (1U * t23);
    t16 = (16U != t29);
    if (t16 == 1)
        goto LAB12;

LAB13:    t30 = (t0 + 3808);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memcpy(t34, t27, 16U);
    xsi_driver_first_trans_fast(t30);
    goto LAB8;

LAB12:    xsi_size_not_matching(16U, t29, 0);
    goto LAB13;

}

static void work_a_1021881320_0034035505_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(31, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 3872);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3728);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1021881320_0034035505_init()
{
	static char *pe[] = {(void *)work_a_1021881320_0034035505_p_0,(void *)work_a_1021881320_0034035505_p_1};
	xsi_register_didat("work_a_1021881320_0034035505", "isim/tb_lfsr_isim_beh.exe.sim/work/a_1021881320_0034035505.didat");
	xsi_register_executes(pe);
}
