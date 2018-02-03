.class public Lorg/spongycastle/cert/ocsp/OCSPReqBuilder;
.super Ljava/lang/Object;
.source "OCSPReqBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/cert/ocsp/OCSPReqBuilder$RequestObject;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;

.field private requestExtensions:Lorg/spongycastle/asn1/x509/Extensions;

.field private requestorName:Lorg/spongycastle/asn1/x509/GeneralName;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    .line 26
    iput-object v1, p0, Lorg/spongycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 27
    iput-object v1, p0, Lorg/spongycastle/cert/ocsp/OCSPReqBuilder;->requestExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    .line 29
    return-void
.end method
