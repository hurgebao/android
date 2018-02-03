.class public Lorg/spongycastle/cms/CMSSignedData;
.super Ljava/lang/Object;
.source "CMSSignedData.java"


# static fields
.field private static final HELPER:Lorg/spongycastle/cms/CMSSignedHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lorg/spongycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/spongycastle/cms/CMSSignedHelper;

    sput-object v0, Lorg/spongycastle/cms/CMSSignedData;->HELPER:Lorg/spongycastle/cms/CMSSignedHelper;

    return-void
.end method
