.class public Lorg/spongycastle/openssl/PEMException;
.super Ljava/io/IOException;
.source "PEMException.java"


# instance fields
.field underlying:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/spongycastle/openssl/PEMException;->underlying:Ljava/lang/Exception;

    return-object v0
.end method
