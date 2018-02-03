.class public Lorg/spongycastle/cms/CMSSignedDataGenerator;
.super Lorg/spongycastle/cms/CMSSignedGenerator;
.source "CMSSignedDataGenerator.java"


# instance fields
.field private signerInfs:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/spongycastle/cms/CMSSignedGenerator;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cms/CMSSignedDataGenerator;->signerInfs:Ljava/util/List;

    .line 57
    return-void
.end method
