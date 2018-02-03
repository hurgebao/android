.class public Lorg/spongycastle/tsp/TimeStampRequest;
.super Ljava/lang/Object;
.source "TimeStampRequest.java"


# static fields
.field private static EMPTY_SET:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/tsp/TimeStampRequest;->EMPTY_SET:Ljava/util/Set;

    return-void
.end method
