.class public Lorg/spongycastle/cms/CMSEncryptedGenerator;
.super Ljava/lang/Object;
.source "CMSEncryptedGenerator.java"


# instance fields
.field protected unprotectedAttributeGenerator:Lorg/spongycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/cms/CMSEncryptedGenerator;->unprotectedAttributeGenerator:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    .line 15
    return-void
.end method
