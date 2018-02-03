.class public Lorg/spongycastle/cms/CMSAttributeTableGenerationException;
.super Lorg/spongycastle/cms/CMSRuntimeException;
.source "CMSAttributeTableGenerationException.java"


# instance fields
.field e:Ljava/lang/Exception;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAttributeTableGenerationException;->e:Ljava/lang/Exception;

    return-object v0
.end method
