.class public Lorg/spongycastle/cms/CMSStreamException;
.super Ljava/io/IOException;
.source "CMSStreamException.java"


# instance fields
.field private final underlying:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "underlying"    # Ljava/lang/Throwable;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lorg/spongycastle/cms/CMSStreamException;->underlying:Ljava/lang/Throwable;

    .line 20
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lorg/spongycastle/cms/CMSStreamException;->underlying:Ljava/lang/Throwable;

    return-object v0
.end method
