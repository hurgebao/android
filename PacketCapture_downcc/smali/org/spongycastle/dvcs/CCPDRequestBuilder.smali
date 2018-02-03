.class public Lorg/spongycastle/dvcs/CCPDRequestBuilder;
.super Lorg/spongycastle/dvcs/DVCSRequestBuilder;
.source "CCPDRequestBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformationBuilder;

    sget-object v1, Lorg/spongycastle/asn1/dvcs/ServiceType;->CCPD:Lorg/spongycastle/asn1/dvcs/ServiceType;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformationBuilder;-><init>(Lorg/spongycastle/asn1/dvcs/ServiceType;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/dvcs/DVCSRequestBuilder;-><init>(Lorg/spongycastle/asn1/dvcs/DVCSRequestInformationBuilder;)V

    .line 16
    return-void
.end method
