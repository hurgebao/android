.class public Lorg/spongycastle/cms/CMSSignedDataParser;
.super Lorg/spongycastle/cms/CMSContentInfoParser;
.source "CMSSignedDataParser.java"


# static fields
.field private static final HELPER:Lorg/spongycastle/cms/CMSSignedHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lorg/spongycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/spongycastle/cms/CMSSignedHelper;

    sput-object v0, Lorg/spongycastle/cms/CMSSignedDataParser;->HELPER:Lorg/spongycastle/cms/CMSSignedHelper;

    return-void
.end method
