/*
 * IdentityPanel.java
 *
 * Created on Nov 18, 2010, 3:22:56 PM
 */
package be.fedict.eidviewer.gui;
import be.fedict.eid.applet.service.Address;
import be.fedict.eid.applet.service.Identity;
import java.awt.Image;
import java.awt.Toolkit;
import java.net.URL;
import java.text.DateFormat;
import java.util.Locale;
import java.util.Observable;
import java.util.Observer;
import javax.swing.ImageIcon;

/**
 *
 * @author frank
 */
public class CardPanel extends javax.swing.JPanel implements Observer
{
    private static final String UNKNOWN_VALUE_TEXT="";

    private DateFormat      mDateFormat;
    private ImageIcon       largeBusyIcon;

    public CardPanel()
    {
        initComponents();
        mDateFormat = DateFormat.getDateInstance(DateFormat.DEFAULT, Locale.getDefault());

    }

    public void update(Observable o, Object o1)
    {
        EidController controller=(EidController)o;

        if(controller.getState()==EidController.STATE.EID_PRESENT)
        {
            if(controller.hasIdentity())
               fillIdentity(controller.getIdentity(),false);
            else
               fillIdentity(null,true);
        }
        else
        {
            fillIdentity(null,false);
        }
    }

    private void fillIdentity(final Identity identity, final boolean loading)
    {
        java.awt.EventQueue.invokeLater(new Runnable()
        {

            public void run()
            {
                cardInfoBusyIcon.setVisible(loading);
                if(identity!=null)
                {  
                    cardNumber.setText(identity.getCardNumber());                                           cardNumberLabel.setEnabled(true);
                    placeOfIssue.setText(identity.getCardDeliveryMunicipality());                           placeOfissueLabel.setEnabled(true);
                    chipNumber.setText(identity.getChipNumber());                                           chipNumberLabel.setEnabled(true);
                    validFrom.setText(mDateFormat.format(identity.getCardValidityDateBegin().getTime()));   validFromLabel.setEnabled(true);
                    validUntil.setText(mDateFormat.format(identity.getCardValidityDateEnd().getTime()));    validUntilLabel.setEnabled(true);
                }
                else
                {
                    cardNumber.setText          (UNKNOWN_VALUE_TEXT);   cardNumberLabel.setEnabled(false);
                    placeOfIssue.setText        (UNKNOWN_VALUE_TEXT);   placeOfissueLabel.setEnabled(false);
                    chipNumber.setText          (UNKNOWN_VALUE_TEXT);   chipNumberLabel.setEnabled(false);
                    validFrom.setText           (UNKNOWN_VALUE_TEXT);   validFromLabel.setEnabled(false);
                    validUntil.setText          (UNKNOWN_VALUE_TEXT);   validUntilLabel.setEnabled(false);
                }
            } 
        });
    }

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        cardNumberLabel = new javax.swing.JLabel();
        placeOfissueLabel = new javax.swing.JLabel();
        chipNumberLabel = new javax.swing.JLabel();
        validFromLabel = new javax.swing.JLabel();
        cardNumber = new javax.swing.JLabel();
        placeOfIssue = new javax.swing.JLabel();
        chipNumber = new javax.swing.JLabel();
        validUntil = new javax.swing.JLabel();
        cardInfoBusyIcon = new javax.swing.JLabel();
        spacer = new javax.swing.JLabel();
        validUntilLabel = new javax.swing.JLabel();
        validFrom = new javax.swing.JLabel();

        setBorder(new javax.swing.border.LineBorder(new java.awt.Color(204, 255, 204), 24, true));
        setLayout(new java.awt.GridBagLayout());

        java.util.ResourceBundle bundle = java.util.ResourceBundle.getBundle("be/fedict/eidviewer/gui/resources/IdentityPanel"); // NOI18N
        cardNumberLabel.setText(bundle.getString("CardPanel.cardNumberLabel.text")); // NOI18N
        cardNumberLabel.setName("cardNumberLabel"); // NOI18N
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(4, 4, 4, 4);
        add(cardNumberLabel, gridBagConstraints);

        placeOfissueLabel.setText(bundle.getString("CardPanel.placeOfissueLabel.text")); // NOI18N
        placeOfissueLabel.setName("placeOfissueLabel"); // NOI18N
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(4, 4, 4, 4);
        add(placeOfissueLabel, gridBagConstraints);

        chipNumberLabel.setText(bundle.getString("CardPanel.chipNumberLabel.text")); // NOI18N
        chipNumberLabel.setName("chipNumberLabel"); // NOI18N
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(4, 4, 4, 4);
        add(chipNumberLabel, gridBagConstraints);

        validFromLabel.setText(bundle.getString("CardPanel.validFromLabel.text")); // NOI18N
        validFromLabel.setName("validFromLabel"); // NOI18N
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(4, 4, 4, 4);
        add(validFromLabel, gridBagConstraints);

        cardNumber.setText(bundle.getString("CardPanel.cardNumber.text")); // NOI18N
        cardNumber.setName("cardNumber"); // NOI18N
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        add(cardNumber, gridBagConstraints);

        placeOfIssue.setText(bundle.getString("CardPanel.placeOfIssue.text")); // NOI18N
        placeOfIssue.setName("placeOfIssue"); // NOI18N
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        add(placeOfIssue, gridBagConstraints);

        chipNumber.setText(bundle.getString("CardPanel.chipNumber.text")); // NOI18N
        chipNumber.setName("chipNumber"); // NOI18N
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        add(chipNumber, gridBagConstraints);

        validUntil.setText(bundle.getString("CardPanel.validUntil.text")); // NOI18N
        validUntil.setName("validUntil"); // NOI18N
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        add(validUntil, gridBagConstraints);

        cardInfoBusyIcon.setIcon(new javax.swing.ImageIcon(getClass().getResource("/be/fedict/eidviewer/gui/resources/busyicons/busy_anim_small.gif"))); // NOI18N
        cardInfoBusyIcon.setName("cardInfoBusyIcon"); // NOI18N
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.insets = new java.awt.Insets(3, 3, 3, 3);
        add(cardInfoBusyIcon, gridBagConstraints);

        spacer.setMaximumSize(new java.awt.Dimension(16, 16));
        spacer.setMinimumSize(new java.awt.Dimension(16, 16));
        spacer.setName("spacer"); // NOI18N
        spacer.setPreferredSize(new java.awt.Dimension(16, 16));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        add(spacer, gridBagConstraints);

        validUntilLabel.setText(bundle.getString("CardPanel.validUntilLabel.text")); // NOI18N
        validUntilLabel.setName("validUntilLabel"); // NOI18N
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(4, 4, 4, 4);
        add(validUntilLabel, gridBagConstraints);

        validFrom.setText(bundle.getString("CardPanel.validFrom.text")); // NOI18N
        validFrom.setName("validFrom"); // NOI18N
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        add(validFrom, gridBagConstraints);
    }// </editor-fold>//GEN-END:initComponents
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel cardInfoBusyIcon;
    private javax.swing.JLabel cardNumber;
    private javax.swing.JLabel cardNumberLabel;
    private javax.swing.JLabel chipNumber;
    private javax.swing.JLabel chipNumberLabel;
    private javax.swing.JLabel placeOfIssue;
    private javax.swing.JLabel placeOfissueLabel;
    private javax.swing.JLabel spacer;
    private javax.swing.JLabel validFrom;
    private javax.swing.JLabel validFromLabel;
    private javax.swing.JLabel validUntil;
    private javax.swing.JLabel validUntilLabel;
    // End of variables declaration//GEN-END:variables
}

