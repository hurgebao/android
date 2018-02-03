.class Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;
.super Ljava/security/cert/CRLException;
.source "JcaX509CRLConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExCRLException"
.end annotation


# instance fields
.field private cause:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
