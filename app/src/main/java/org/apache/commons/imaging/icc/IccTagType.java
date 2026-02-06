package org.apache.commons.imaging.icc;

interface IccTagType {
    String getName();

    int getSignature();

    String getTypeDescription();
}
