/* user and group to drop privileges to */
static const char *user  = "nobody";
static const char *group = "nogroup";

// static const char *colorname[NUMCOLS] = {
//     [INIT] =   "black",     [> after initialization <]
//     [INPUT] =  "#005577",   [> during input <]
//     [FAILED] = "#CC3333",   [> wrong password <]
// };

// catppuccin variant
static const char *colorname[NUMCOLS] = {
    [INIT] =   "#11111b",     /* after initialization */
    [INPUT] =  "/home/ramkumar/Software/suckless/slock_withImage/images/kali_input.png",   /* during input */
    [FAILED] = "/home/ramkumar/Software/suckless/slock_withImage/images/kali_error.png",   /* wrong password */
    // [INIT] =   "#11111b",     /* after initialization */
    // [INPUT] =  "#74c7ec",   /* during input */
    // [FAILED] = "#f38ba8",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 0;
