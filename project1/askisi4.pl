% if κάλυψη_ασθενούς (Ασφαλισμένος, Ασθενής) and
% κάλυψη_υπηρεσίας_περίθαλψης(Ασφαλισμένος, νοσοκομειακή) and
% είδος_υπηρεσίας_περίθαλψης(Ασθενής, νοσοκομειακή) and
% αιτούμενη_αποζημίωση (Ασφαλισμένος, Ποσό) and
% κάλυψη_ασφάλισης (Ασφαλισμένος, πλήρης)
% then αποζημίωση (Ασφαλισμένος, Ποσο)
apozimiosi(Asfalismenos,Poso):- kalipsi_asthenous(Asfalismenos,Asthnis),
                                kalipsi_ipiresias_perithalpsis(Asfalismenos,nosokomiaki),
                                eidos_ipiresias_perithalpsis(Asthnis,nosokomiaki),
                                aitoumeni_apozimiosi(Asfalismenos,Poso),
                                kalipsi_asfalisis(Asfalismenos,pliris).

% if κάλυψη_ασθενούς (Ασφαλισμένος, Ασθενής) and
% κάλυψη_υπηρεσίας_περίθαλψης(Ασφαλισμένος, νοσοκομειακή) and
% είδος_υπηρεσίας_περίθαλψης(Ασθενής, νοσοκομειακή) and
% αιτούμενη_αποζημίωση (Ασφαλισμένος, Ποσό) and
% Ποσό < 5000 and
% κάλυψη_ασφάλισης (Ασφαλισμένος, μερική)
% then αποζημίωση (Ασφαλισμένος, Ποσό)
apozimiosi(Asfalismenos,Poso):- kalipsi_asthenous(Asfalismenos,Asthnis),
                                kalipsi_ipiresias_perithalpsis(Asfalismenos,nosokomiaki),
                                eidos_ipiresias_perithalpsis(Asthnis,nosokomiaki),
                                aitoumeni_apozimiosi(Asfalismenos,Poso),
                                Poso =< 5000,
                                kalipsi_asfalisis(Asfalismenos,meriki).

% if συγγένεια (Ασφαλισμένος, Ασθενής, παιδί) and
% είδος_ασφάλειας (Ασφαλισμένος, οικογενειακή)
% then κάλυψη_ασθενούς (Ασφαλισμένος, Ασθενής)
kalipsi_asthenous(Asfalismenos,Asthnis):- siggeneia(Asfalismenos,Asthnis,paidi),
                                          eidos_asfaleias(Asfalismenos,oikogeneiaki).

% if συγγένεια (Ασφαλισμένος, Ασθενής, σύζυγος) and
% είδος_ασφάλειας (Ασφαλισμένος, οικογενειακή)
% then κάλυψη_ασθενούς (Ασφαλισμένος, Ασθενής)
kalipsi_asthenous(Asfalismenos,Asthnis):- siggeneia(Asfalismenos,Asthnis,sizigos),
                                          eidos_asfaleias(Asfalismenos,oikogeneiaki).

% συγγένεια(κώστας, μαρία, παιδί)
% κάλυψη_υπηρεσίας_περίθαλψης(κώστας, νοσοκομειακή)
% είδος_υπηρεσίας_περίθαλψης(μαρία, νοσοκομειακή)
% κάλυψη_ασφάλισης(κώστας, πλήρης)
% είδος_ασφάλειας(κώστας,οικογενειακή)
% αιτούμενη_αποζημίωση(κώστας, 8000)
siggeneia(kostas,maria,paidi).
kalipsi_ipiresias_perithalpsis(kostas,nosokomiaki).
eidos_ipiresias_perithalpsis(maria,nosokomiaki).
kalipsi_asfalisis(kostas,pliris).
eidos_asfaleias(kostas,oikogeneiaki).
aitoumeni_apozimiosi(kostas,8000).

% συγγένεια(νίκος, άννα, σύζυγος)
% κάλυψη_υπηρεσίας_περίθαλψης(νίκος, νοσοκομειακή)
% είδος_υπηρεσίας_περίθαλψης(άννα, νοσοκομειακή)
% κάλυψη_ασφάλισης(νίκος, μερική)
% είδος_ασφάλειας(νίκος,οικογενειακή)
% αιτούμενη_αποζημίωση(νίκος, 5000)
siggeneia(nikos,anna,sizigos).
kalipsi_ipiresias_perithalpsis(nikos,nosokomiaki).
eidos_ipiresias_perithalpsis(anna,nosokomiaki).
kalipsi_asfalisis(nikos,meriki).
eidos_asfaleias(nikos,oikogeneiaki).
aitoumeni_apozimiosi(nikos,5000).
