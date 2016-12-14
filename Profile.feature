Feature: Προφίλ 


	Background:
	Δεδομένου ότι ο χρήστης είναι συνδεδεμένος.

	Scenario: Ανέβασμα Φωτογραφίας Προφίλ 
    		Given Βρίσκομαι στη σελίδα επεξεργασία προφίλ
		And Δεν έχω φωτογραφία στο προφίλ 
		When πατήσω "Προσθήκη Φωτογραφίας Προφίλ"
		Then Θα πρέπει να επίλεξω μια φωτογραφία από αρχείο  
		And πατήσω το κουμπί "Οκ"
		Then Εμφανίζεται το μήνυμα "Η φωτογραφία ανέβηκε επιτυχώς"
		
	Scenario: Αλλαγή τρέχουσας φωτογραφίας Προφίλ 
		Given Βρίσκομαι στη σελίδα επεξεργασία προφίλ
   		And Έχω φωτογραφία στο προφίλ
		When πατήσω "Αλλαγή τρέχουσας φωτογραφίας Προφίλ"
		Then Θα πρέπει να επίλεξω μια φωτογραφία από αρχείο  
		And πατήσω το κουμπί "Οκ"
		Then Εμφανίζεται το μήνυμα "Η φωτογραφία  προφίλ σας άλλαξε επιτυχώς"
    
	Scenario: Αλλαγή Ονόματος Χρήστη πρώτη φορά 
		Given Βρίσκομαι στη σελίδα επεξεργασία προφίλ
    		And  δεν έχω αλλάξει το Όνομα Χρήστη προηγούμενη φορά
		When πατήσω "Αλλαγή Ονόματος Χρήστη"
		Then εμαφανίζεται πεδίο αλλαγής ονόματος χρήστη  
		When πληκτρολογήσω νέο Όνομα Χρήστη  
   		And πατήσω το κουμπί "Save"
		Then Εμφανίζεται το μήνυμα "Το Όνομα Χρήστη σας άλλαξε επιτυχώς"

    
    	Scenario: Ανεπιτυχής αλλαγή Ονόματος Χρήστη
		Given Βρίσκομαι στη σελίδα επεξεργασία προφίλ
    		And Δεν έχω αλλάξει το Όνομα Χρήστη προηγούμενη φορά
		When πατήσω "Αλλαγή Ονόματος Χρήστη"
		Then εμαφανίζεται πεδίο αλλαγής ονόματος χρήστη  
		When πληκτρολογήσω νέο Όνομα Χρήστη  
   		And πατήσω το κουμπί "Save"
		And το Όνομα Χρήστη είναι κατοχυρωμένο
		Then Εμφανίζεται το μήνυμα "Το Όνομα Χρήστη υπάρχει ήδη επιλέξτε διαφορετικό"
    		And εμαφανίζεται πεδίο αλλαγής ονόματος χρήστη
    
        
   	Scenario: Προσπάθεια αλλαγής Ονόματος Χρήστη δεύτερη φορά 
		Given Βρίσκομαι στη σελίδα επεξεργασία προφίλ
    		And έχω αλλάξει το Όνομα Χρήστη προηγούμενη φορά
		When πατήσω "Αλλαγή Ονόματος Χρήστη"
		Then Εμφανίζεται το μήνυμα "Δεν μπορείτε να αλλάξετε το Όνομα Χρήστη 2η φορά"
    
    
 	Scenario: Αλλαγή Κωδικού Πρόσβασης
		Given Βρίσκομαι στη σελίδα επεξεργασία προφίλ
		When πατήσω "Αλλαγή Κωδικού Πρόσβασης"
		Then εμαφανίζεται πεδίο αλλαγής κωδικού  
		And πληκτρολογήσω νέο κωδικό
   		Then εμφανίζεται πεδίο επαλήθευσης 
		When πληκτρολογήσω σωστα το νέο κωδικό
		And πατήσω το κουμπί "Οκ"
		Then Εμφανίζεται το μήνυμα "Ο κωδικός σας άλλαξε"    		


	Scenario: Αποτυχία αλλαγής Κωδικού Πρόσβασης
		Given Βρίσκομαι στη σελίδα επεξεργασία προφίλ
		When πατήσω "Αλλαγή Κωδικού Πρόσβασης"
		Then εμαφανίζεται πεδίο αλλαγής κωδικού  
		And πληκτρολογήσω νέο κωδικό
   		Then εμφανίζεται πεδίο επαλήθευσης 
		When πληκτρολογήσω λάθος το νέο κωδικό
		And πατήσω το κουμπί "Οκ"
		Then Εμφανίζεται το μήνυμα "Οι δύο κωδικοί δεν ταυτίζονται, προσπαθείστε ξανά"    		


	Scenario: Προσθήκη Στοιχείων Προφίλ
		Given Βρίσκομαι στη σελίδα επεξεργασία προφίλ
		And δεν έχω συμπληρώσει τα προσωπικά μου στοχεία
		When πατήσω "Προσθήκη προσωπικών στοιχείων"
		Then εμφανίζεται πεδίο ημερομηνίας γέννησης
		And εμφανίζεται πεδίο φύλου
   		And εμφανίζεται πεδίο τοποθεσίας
		When συμπληρώσω τα στοιχεία
		And πατήσω το κουμπί "Οκ"
		Then Εμφανίζεται το μήνυμα "Το προφίλ σας  ενημερώθηκε"   

	Scenario: Επεξεργασία Στοιχείων Προφίλ
		Given Βρίσκομαι στη σελίδα επεξεργασία προφίλ
		And Έχω συμπληρώσει τα προσωπικά μου στοχεία
		When πατήσω "Επεξεργασία προσωπικών στοιχείων"
		Then εμφανίζεται πεδίο ημερομηνίας γέννησης
		And εμφανίζεται πεδίο φύλου
   		And εμφανίζεται πεδίο τοποθεσίας
		When συμπληρώσω τα στοιχεία
		And πατήσω το κουμπί "Οκ"
		Then Εμφανίζεται το μήνυμα "Το προφίλ σας ενημερώθηκε"


	Scenario: Ρυθμίσεις Προφίλ ως "Ανοιχτό" 
		Given Βρίσκομαι στη σελίδα επεξεργασία προφίλ
		And Δεν έχω επιλέξει το απόρρητο του προφίλ μου
		When πατήσω "Επεξεργασία Απορρήτου"
		Then εμφανίζονται επιλογές "Κλειστό" ή "Ανοιχτό"
		And επιλέξω "Ανοιχτό"
		Then Εμφανίζεται το μήνυμα "Το προφίλ σας είναι προσβάσιμο σε όλους"
		
	Scenario: Ρυθμίσεις Προφίλ ως "Κλειστό" 
		Given Βρίσκομαι στη σελίδα επεξεργασία προφίλ
		And Δεν έχω επιλέξει το απόρρητο του προφίλ μου
		When πατήσω "Επεξεργασία Απορρήτου"
		Then εμφανίζονται επιλογές "Κλειστό" ή "Ανοιχτό"
		When επιλέξω "Κλειστό"
		Then Εμφανίζεται το μήνυμα "Το προφίλ σας είναι προσβάσιμο σε φίλους"













