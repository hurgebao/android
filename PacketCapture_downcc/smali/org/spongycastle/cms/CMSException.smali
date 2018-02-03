.class public Lorg/spongycastle/cms/CMSException;
.super Ljava/lang/Exception;
.source "CMSException.java"


# instance fields
.field e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p2, p0, Lorg/spongycastle/cms/CMSException;->e:Ljava/lang/Exception;

    .line 21
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/spongycastle/cms/CMSException;->e:Ljava/lang/Exception;

    return-object v0
.end method
