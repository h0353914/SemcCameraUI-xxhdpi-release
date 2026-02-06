package com.sonymobile.media;

import android.provider.MediaStore$Files$FileColumns;

public interface SomcMediaStore$ExtendedFiles$ExtendedFileColumns extends MediaStore$Files$FileColumns {
    public static final int SOMC_CATEGORY_NONE = 0;
    public static final int SOMC_CATEGORY_SEQUENCE = 2;
    public static final int SOMC_CATEGORY_SEQUENCE_COVER = 3;
    public static final int SOMC_CATEGORY_SINGLES = 1;
    public static final String SOMC_FILE_TYPE = "somctype";
    public static final int SOMC_FILE_TYPE_AR_EFFECT = 7;
    public static final int SOMC_FILE_TYPE_BACKGROUND_DEFOCUS = 9;
    public static final int SOMC_FILE_TYPE_BURST_COVER = 2;
    public static final int SOMC_FILE_TYPE_BURST_IMAGE = 129;
    public static final int SOMC_FILE_TYPE_CINEMAGRAPH = 8;
    public static final int SOMC_FILE_TYPE_HIGHLIGHT_VIDEO = 14;
    public static final int SOMC_FILE_TYPE_HI_RES_AUDIO = 13;
    public static final int SOMC_FILE_TYPE_INFO_EYE = 5;
    public static final int SOMC_FILE_TYPE_NONE = 0;
    public static final int SOMC_FILE_TYPE_SOCIAL_CAST = 6;
    public static final int SOMC_FILE_TYPE_SOUNDPHOTO = 42;
    public static final int SOMC_FILE_TYPE_TIMESHIFT_COVER = 4;
    public static final int SOMC_FILE_TYPE_TIMESHIFT_IMAGE = 130;
    public static final int SOMC_FILE_TYPE_TIMESHIFT_VIDEO = 12;
    public static final int SOMC_FILE_TYPE_TIMESHIFT_VIDEO_120F = 11;
    public static final int SOMC_FILE_TYPE_WIKITUDE = 10;
    public static final String SOMC_FOLDER_CATEGORY = "somccategory";
}
