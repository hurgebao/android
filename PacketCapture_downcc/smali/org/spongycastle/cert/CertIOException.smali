.class public Lorg/spongycastle/cert/CertIOException;
.super Ljava/io/IOException;
.source "CertIOException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p2, p0, Lorg/spongycastle/cert/CertIOException;->cause:Ljava/lang/Throwable;

    .line 18
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/spongycastle/cert/CertIOException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
